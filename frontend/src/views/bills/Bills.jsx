import React, { useState, useEffect } from "react";
import { UserOutlined, PrinterOutlined } from "@ant-design/icons";
import {
  Breadcrumb,
  Form,
  Input,
  Button,
  Select,
  Layout,
  Typography,
  Divider,
  Row,
  Col,
  Table,
  InputNumber,
  Checkbox,
  theme,
  message,
} from "antd";
import jsPDF from "jspdf";
import "jspdf-autotable";

const Bills = () => {
  const { Content } = Layout;
  const [books, setBooks] = useState([]);
  const [form] = Form.useForm();
  const [formLayout, setFormLayout] = useState("horizontal");
  const [selectedBooks, setSelectedBooks] = useState([]);
  const { Title } = Typography;

  const {
    token: { colorBgContainer, borderRadiusLG },
  } = theme.useToken();

  const handleChange = (value) => {
    console.log(`selected ${value}`);
  };

  useEffect(() => {
    fetch("http://localhost:3001/bills/books")
      .then((response) => response.json())
      .then((data) => {
        setBooks(data);
        if (data.length > 0) {
          form.setFieldsValue({
            libro: data[0].value,
            precioUnitario: data[0].precio,
            cantidad: 1,
          });
        }
      })
      .catch((error) => {
        console.error("Error al cargar los libros: ", error);
      });
  }, [form]);

  const handleSaveBill = () => {
    const { nombre, apellido } = form.getFieldsValue(["nombre", "apellido"]);
    const request = {
      selectedBooks,
      nombre,
      apellido,
    };

    fetch("http://localhost:3001/bills/save", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(request),
    })
      .then((response) => response.json())
      .then((data) => {
        message.success(data.message);
        generatePDF(request, selectedBooks);
        setSelectedBooks([]);
        form.setFieldsValue({ nombre: "", apellido: "" });
      })
      .catch((error) => {
        message.error("Error al guardar la factura");
        console.error("Error al guardar la factura: ", error.message);
      });
  };

  const handleBookSelect = (value, option) => {
    const selectedBook = books.find((book) => book.value === value);
    form.setFieldsValue({ precioUnitario: selectedBook.precio });
  };

  const handleAddBook = () => {
    form.validateFields().then((values) => {
      const selectedBook = books.find((book) => book.value === values.libro);
      const subtotal = (values.cantidad * values.precioUnitario).toFixed(2);
      const descuento = 0;
      const total = subtotal - descuento;
      const newBook = {
        ...selectedBook,
        cantidad: values.cantidad,
        precioUnitario: values.precioUnitario,
        subtotal,
        descuento,
        total,
      };
      setSelectedBooks([...selectedBooks, newBook]);

      // Resetear los valores del formulario
      form.setFieldsValue({
        libro: books[0]?.value,
        cantidad: 1,
        precioUnitario: books[0]?.precio,
      });
    });
  };

  const getTotalAmount = () => {
    return selectedBooks.reduce(
      (acumuladorTotal, book) => acumuladorTotal + book.total,
      0
    );
  };

  const totalAmount = getTotalAmount();

  const generatePDF = (data, selectedBooks) => {
    const doc = new jsPDF();

    // Agregar el logo y el título "Factura"
    const logo = new Image();
    logo.src = "logo512.png";
    doc.addImage(
      logo,
      "PNG",
      doc.internal.pageSize.getWidth() - 40,
      15,
      30,
      30
    );
    doc.setTextColor("#001529");
    doc.setFontSize(32);
    doc.text("FACTURA", 15, 30);
    doc.setFont("Helvetica", "bold");

    // Agregar detalles del cliente y factura
    doc.setFontSize(12);
    doc.text("Facturado por:", 15, 50);
    doc.setFont("Helvetica");
    doc.text(localStorage.getItem("username"), 15, 55);
    doc.text(`Cliente: ${data.nombre} ${data.apellido}`, 15, 65);
    const currentDate = new Date();
    const formattedDate = `${currentDate.getFullYear()}-${(
      currentDate.getMonth() + 1
    )
      .toString()
      .padStart(2, "0")}-${currentDate.getDate().toString().padStart(2, "0")}`;
    doc.setFont("Helvetica", "bold"); // Corrección 1: Establecer el estilo de fuente en negrita
    doc.text("Fecha:", doc.internal.pageSize.getWidth() - 22, 50, {
      align: "right",
    });
    doc.setFont("Helvetica"); // Restablecer el estilo de fuente a la normalidad
    doc.text(formattedDate, doc.internal.pageSize.getWidth() - 15, 55, {
      align: "right",
    });

    // Agregar una línea arriba de la tabla (10 unidades más arriba)
    doc.setLineWidth(0.2);
    doc.setDrawColor("#001529");
    doc.line(15, 80, doc.internal.pageSize.getWidth() - 15, 80);

    // Agregar la tabla centrada
    const tableData = [];
    let totalPagar = 0;
    let descuento = 0;
    selectedBooks.forEach((book, index) => {
      const rowData = [
        { content: book.label, styles: { halign: "left" } },
        { content: `$${book.precio}`, styles: { halign: "center" } },
        { content: book.cantidad, styles: { halign: "center" } },
        { content: `$${book.total}`, styles: { halign: "center" } },
      ];
      tableData.push(rowData);
      totalPagar += book.total;
    });
    doc.autoTable({
      head: [
        [
          { content: "Nombre libro", styles: { halign: "left" } },
          { content: "Precio", styles: { halign: "center" } },
          { content: "Cantidad", styles: { halign: "center" } },
          { content: "Total", styles: { halign: "center" } },
        ],
      ],
      body: tableData,
      startY: 85,
      theme: "plain",
      styles: {
        textColor: "#001529",
      },
    });

    // Agregar una línea abajo de la tabla
    doc.setLineWidth(0.2);
    doc.setDrawColor("#001529");
    doc.line(
      15,
      doc.autoTable.previous.finalY + 5,
      doc.internal.pageSize.getWidth() - 15,
      doc.autoTable.previous.finalY + 5
    );

    // Agregar Método de Pago (sin negrita/bold)
    doc.setFont("Helvetica", "bold"); // Corrección 2: Establecer el estilo de fuente en negrita
    doc.text("Método de pago:", 15, doc.autoTable.previous.finalY + 15);
    doc.setFont("Helvetica"); // Restablecer el estilo de fuente a la normalidad
    doc.text("Efectivo", 15, doc.autoTable.previous.finalY + 20);

    // Agregar Subtotal a la misma altura que Método de pago (sin negrita/bold)
    doc.setFont("Helvetica", "bold"); // Corrección 3: Establecer el estilo de fuente en negrita
    doc.text(
      "Subtotal:",
      doc.internal.pageSize.getWidth() - 75,
      doc.autoTable.previous.finalY + 15
    );
    doc.setFont("Helvetica"); // Restablecer el estilo de fuente a la normalidad
    doc.text(
      `$${totalPagar}`,
      doc.internal.pageSize.getWidth() - 10,
      doc.autoTable.previous.finalY + 15,
      { align: "right" }
    );

    // Agregar Descuento y Total
    doc.setFont("Helvetica", "bold"); // Corrección 3: Establecer el estilo de fuente en negrita
    doc.text(
      "Descuento:",
      doc.internal.pageSize.getWidth() - 75,
      doc.autoTable.previous.finalY + 20
    );
    doc.setFont("Helvetica"); // Restablecer el estilo de fuente a la normalidad
    doc.text(
      `$${descuento}`,
      doc.internal.pageSize.getWidth() - 10,
      doc.autoTable.previous.finalY + 20,
      { align: "right" }
    );
    doc.setFont("Helvetica", "bold"); // Corrección 3: Establecer el estilo de fuente en negrita
    doc.text(
      "Total:",
      doc.internal.pageSize.getWidth() - 75,
      doc.autoTable.previous.finalY + 25
    );
    doc.setFont("Helvetica"); // Restablecer el estilo de fuente a la normalidad
    doc.text(
      `$${totalPagar - descuento}`,
      doc.internal.pageSize.getWidth() - 10,
      doc.autoTable.previous.finalY + 25,
      { align: "right" }
    );

    // Agregar footer
    doc.setFillColor("#001529");
    doc.setTextColor("#ffffff");
    doc.setFont("italic");
    doc.text(
      "Gracias por preferirnos",
      doc.internal.pageSize.getWidth() / 2,
      doc.internal.pageSize.getHeight() - 10,
      { align: "center" }
    );

    // Guardar el PDF
    doc.save(formattedDate.replace(/-/g, '') + ".pdf");
  };

  function pad(number) {
    if (number < 10) {
      return "0" + number;
    }
    return number;
  }

  const totalRow = {
    label: "Total:",
    total: `$${totalAmount.toFixed(2)}`,
    key: "total",
  };

  const columns = [
    {
      title: "Libro",
      dataIndex: "label",
      key: "label",
    },
    {
      title: "Cantidad",
      dataIndex: "cantidad",
      key: "cantidad",
    },
    {
      title: "Precio Unitario",
      dataIndex: "precioUnitario",
      key: "precioUnitario",
    },
    {
      title: "Subtotal",
      dataIndex: "subtotal",
      key: "subtotal",
    },
    {
      title: "Descuento",
      dataIndex: "descuento",
      key: "descuento",
    },
    {
      title: "Total",
      dataIndex: "total",
      key: "total",
    },
  ];

  const columnsWithTotal = [...columns, totalRow];

  return (
    <Content style={{ margin: "0 16px" }}>
      <Breadcrumb style={{ margin: "50px 0 16px 0" }}>
        <Breadcrumb.Item>
          <UserOutlined /> {localStorage.getItem("username")}
        </Breadcrumb.Item>
        <Breadcrumb.Item> Facturar </Breadcrumb.Item>
      </Breadcrumb>
      <div
        style={{
          padding: 24,
          paddingTop: 3,
          minHeight: "86vh",
          background: colorBgContainer,
          borderRadius: borderRadiusLG,
        }}
      >
        <Title level={3} style={{ marginBottom: "25px" }}>
          Datos de libro
        </Title>
        <Form
          layout={formLayout}
          form={form}
          initialValues={{
            layout: formLayout,
          }}
        >
          <Row gutter={16}>
            <Col span={12}>
              <Form.Item label="Libro:" name="libro">
                <Select
                  onChange={handleChange}
                  onSelect={handleBookSelect}
                  options={books.map((book) => ({
                    value: book.value,
                    label: book.label + " - " + book.autor,
                  }))}
                />
              </Form.Item>
            </Col>
            <Col span={12}>
              <Form.Item label="Cantidad" name="cantidad">
                <InputNumber min={1} max={100} defaultValue={1} />
              </Form.Item>
            </Col>
          </Row>
          <Row gutter={16}>
            <Col span={12}>
              <Form.Item label="Precio unitario:" name="precioUnitario">
                <Input prefix={"$"} disabled defaultValue={books.precio} />
              </Form.Item>
            </Col>
            <Col span={12}>
              <Form.Item label="Descuento:" name="descuento">
                <Input prefix={"$"} placeholder="0.00" />
              </Form.Item>
            </Col>
          </Row>
          <Button type="primary" onClick={handleAddBook}>
            Añadir libro
          </Button>

          <Divider />

          <Title level={3} style={{ marginBottom: "25px" }}>
            Datos de cliente
          </Title>

          <Row gutter={16}>
            <Col span={12}>
              <Form.Item label="Nombre" name="nombre">
                <Input placeholder="Nombre de cliente" />
              </Form.Item>
            </Col>
            <Col span={12}>
              <Form.Item label="Apellido" name="apellido">
                <Input placeholder="Apellido de cliente" />
              </Form.Item>
            </Col>
          </Row>
          <Row gutter={16}>
            <Col span={12}>
              <Form.Item label="Método de pago:" name="metodoPago">
                <Checkbox checked={true}>Efectivo</Checkbox>
              </Form.Item>
            </Col>
          </Row>

          <Table
            columns={columnsWithTotal}
            dataSource={selectedBooks.concat(totalRow)}
          />
          <br />
          <Button type="primary" onClick={handleSaveBill}>
            <PrinterOutlined /> Generar factura
          </Button>
        </Form>
      </div>
    </Content>
  );
};

export default Bills;
