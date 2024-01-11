import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:invoice_generator/models/Globals.dart';

class Pdf_page extends StatefulWidget {
  const Pdf_page({Key? key}) : super(key: key);

  @override
  State<Pdf_page> createState() => _Pdf_pageState();
}

class _Pdf_pageState extends State<Pdf_page> {
  TextStyle myfonts1 = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.teal,
  );
  TextStyle myfonts2 = const TextStyle(
    fontSize: 17,
  );

  int subtotal = int.parse(Globals.Quantity!) * int.parse(Globals.Price!);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Check Invoice",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        foregroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () async {
              setState(() async {
                pw.Document pdf = pw.Document();
                var image = await networkImage("https://png.pngtree.com/element_our/png_detail/20180904/world-logo-template-png_83839.jpg");

                pdf.addPage(
                  pw.Page(
                      pageFormat: PdfPageFormat.a4,
                      build: (pw.Context context) {
                        return pw.Column(
                          children: [
                            pw.Row(
                              mainAxisAlignment:
                                  pw.MainAxisAlignment.spaceBetween,
                              children: [
                                pw.Column(
                                  crossAxisAlignment:
                                      pw.CrossAxisAlignment.start,
                                  children: [
                                    pw.Text(
                                      'From :\n',
                                      style: pw.TextStyle(
                                        color: PdfColors.black,
                                        fontWeight: pw.FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                    pw.Text(
                                      '${Globals.Businessname}',
                                      style: const pw.TextStyle(
                                        color: PdfColors.black,
                                        fontSize: 14,
                                      ),
                                    ),
                                    pw.Container(
                                      width: 200,
                                      child: pw.Text(
                                        '${Globals.Bussinessaddress}',
                                        style: const pw.TextStyle(
                                          color: PdfColors.black,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                    pw.Text(
                                      '${Globals.Bussinesscountry},',
                                      style: const pw.TextStyle(
                                        color: PdfColors.black,
                                        fontSize: 14,
                                      ),
                                    ),
                                    pw.Text(
                                      '${Globals.Bussinessemail},',
                                      style: const pw.TextStyle(
                                        color: PdfColors.black,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            pw.Row(
                              children: [
                                pw.Container(
                                  height: 50,
                                  width: 50,
                                  color: PdfColors.black,
                                  child: pw.Image(
                                    image,
                                    // pw.MemoryImage(
                                       // File(Globals.image!.path).readAsBytesSync(),
                                    // ),
                                    fit: pw.BoxFit.cover,
                                  ),
                                ),
                                pw.SizedBox(width: 15),
                                pw.Column(
                                  crossAxisAlignment:
                                      pw.CrossAxisAlignment.start,
                                  children: [
                                    pw.SizedBox(height: 15),
                                    pw.Text(
                                      '${Globals.Businessname}',
                                      style: pw.TextStyle(
                                        color: PdfColors.black,
                                        fontWeight: pw.FontWeight.bold,
                                        fontSize: 40,
                                      ),
                                    ),
                                    pw.Text(
                                      '${Globals.Businessname}',
                                      style: const pw.TextStyle(
                                        color: PdfColors.black,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            pw.SizedBox(
                              height: 25,
                            ),
                            pw.Row(
                              mainAxisAlignment:
                                  pw.MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: pw.CrossAxisAlignment.end,
                              children: [
                                pw.Column(
                                  crossAxisAlignment:
                                      pw.CrossAxisAlignment.start,
                                  children: [
                                    pw.Text('To :\n',
                                        style: pw.TextStyle(
                                          color: PdfColors.black,
                                          fontWeight: pw.FontWeight.bold,
                                          fontSize: 14,
                                        )),
                                    pw.Text('${Globals.Clientname}',
                                        style: const pw.TextStyle(
                                          color: PdfColors.black,
                                          fontSize: 14,
                                        )),
                                    pw.Container(
                                      width: 200,
                                      child: pw.Text('${Globals.Clientaddress}',
                                          style: const pw.TextStyle(
                                            color: PdfColors.black,
                                            fontSize: 14,
                                          )),
                                    ),
                                    pw.Text('${Globals.Clientcountry}',
                                        style: const pw.TextStyle(
                                          color: PdfColors.black,
                                          fontSize: 14,
                                        )),
                                    pw.Text(
                                      '${Globals.Clientemail}',
                                      style: const pw.TextStyle(
                                        color: PdfColors.black,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  crossAxisAlignment:
                                      pw.CrossAxisAlignment.start,
                                  children: [
                                    pw.Column(
                                      crossAxisAlignment:
                                          pw.CrossAxisAlignment.start,
                                      children: [
                                        pw.Text(
                                          'Invoice # :',
                                          style: pw.TextStyle(
                                            color: PdfColors.black,
                                            fontWeight: pw.FontWeight.bold,
                                            fontSize: 14,
                                          ),
                                        ),
                                        pw.Text(
                                          'Date of Issue :',
                                          style: pw.TextStyle(
                                            color: PdfColors.black,
                                            fontWeight: pw.FontWeight.bold,
                                            fontSize: 14,
                                          ),
                                        ),
                                        pw.Text(
                                          'Currency :',
                                          style: pw.TextStyle(
                                            color: PdfColors.black,
                                            fontWeight: pw.FontWeight.bold,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                    pw.SizedBox(
                                      width: 20,
                                    ),
                                    pw.Column(
                                      children: [
                                        pw.Text(
                                          '${Globals.Invoicenumber}\n',
                                          style: const pw.TextStyle(
                                            color: PdfColors.black,
                                            fontSize: 14,
                                          ),
                                        ),
                                        pw.Text(
                                          '${Globals.Invoicedate}',
                                          style: const pw.TextStyle(
                                            color: PdfColors.black,
                                            fontSize: 14,
                                          ),
                                        ),
                                        pw.Text(
                                          '${Globals.Currency}',
                                          style: const pw.TextStyle(
                                            color: PdfColors.black,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            pw.SizedBox(height: 50),
                            pw.Row(
                              mainAxisAlignment:
                                  pw.MainAxisAlignment.spaceEvenly,
                              children: [
                                pw.Container(
                                  width: 100,
                                  child: pw.Text('Products',
                                      style: pw.TextStyle(
                                        color: PdfColors.black,
                                        fontWeight: pw.FontWeight.bold,
                                        fontSize: 14,
                                      )),
                                ),
                                pw.Container(
                                  width: 100,
                                  child: pw.Text(
                                    'Description',
                                    style: pw.TextStyle(
                                      color: PdfColors.black,
                                      fontWeight: pw.FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                pw.Container(
                                  alignment: pw.Alignment.center,
                                  width: 50,
                                  child: pw.Text(
                                    'Price',
                                    style: pw.TextStyle(
                                      color: PdfColors.black,
                                      fontWeight: pw.FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                pw.Container(
                                  alignment: pw.Alignment.center,
                                  width: 50,
                                  child: pw.Text(
                                    'QTY',
                                    style: pw.TextStyle(
                                      color: PdfColors.black,
                                      fontWeight: pw.FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                pw.Container(
                                  alignment: pw.Alignment.center,
                                  width: 70,
                                  child: pw.Text(
                                    'Total Amount',
                                    style: pw.TextStyle(
                                      color: PdfColors.black,
                                      fontWeight: pw.FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            pw.SizedBox(height: 10),
                            pw.Divider(
                              thickness: 2,
                              color: PdfColors.black,
                            ),
                            pw.SizedBox(height: 20),
                            pw.Row(
                              mainAxisAlignment:
                                  pw.MainAxisAlignment.spaceBetween,
                              children: [
                                pw.Container(
                                  width: 100,
                                  child: pw.Column(
                                    children: [
                                      pw.Text(
                                        "${Globals.ProductName}",
                                        style: const pw.TextStyle(
                                          color: PdfColors.black,
                                          fontSize: 14,
                                        ),
                                      ),
                                      pw.Divider(
                                        thickness: 1,
                                        color: PdfColors.black,
                                        indent: 300,
                                      ),
                                    ],
                                  ),
                                ),
                                pw.Container(
                                  width: 100,
                                  child: pw.Column(
                                    children: [
                                      pw.Text(
                                        "${Globals.Description}",
                                        style: const pw.TextStyle(
                                          color: PdfColors.black,
                                          fontSize: 14,
                                        ),
                                      ),
                                      pw.Divider(
                                        thickness: 1,
                                        color: PdfColors.black,
                                        indent: 300,
                                      ),
                                    ],
                                  ),
                                ),
                                pw.Container(
                                  width: 50,
                                  child: pw.Column(
                                    children: [
                                      pw.Text(
                                        "${Globals.Price}",
                                        style: const pw.TextStyle(
                                          color: PdfColors.black,
                                          fontSize: 14,
                                        ),
                                      ),
                                      pw.Divider(
                                        thickness: 1,
                                        color: PdfColors.black,
                                        indent: 300,
                                      ),
                                    ],
                                  ),
                                ),
                                pw.Container(
                                  width: 50,
                                  child: pw.Column(
                                    children: [
                                      pw.Text(
                                        "${Globals.Quantity}",
                                        style: const pw.TextStyle(
                                          color: PdfColors.black,
                                          fontSize: 14,
                                        ),
                                      ),
                                      pw.Divider(
                                        thickness: 1,
                                        color: PdfColors.black,
                                        indent: 300,
                                      ),
                                    ],
                                  ),
                                ),
                                pw.Container(
                                  width: 70,
                                  child: pw.Column(
                                    children: [
                                      pw.Text(
                                        "$subtotal",
                                        style: const pw.TextStyle(
                                          color: PdfColors.black,
                                          fontSize: 14,
                                        ),
                                      ),
                                      pw.Divider(
                                        thickness: 1,
                                        color: PdfColors.black,
                                        indent: 300,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            pw.SizedBox(height: 5),
                            pw.Divider(
                              thickness: 1,
                              color: PdfColors.grey,
                            ),
                            pw.SizedBox(height: 30),
                            pw.Row(
                              mainAxisAlignment:
                                  pw.MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: pw.CrossAxisAlignment.end,
                              children: [
                                pw.Container(),
                                pw.Row(
                                  crossAxisAlignment:
                                      pw.CrossAxisAlignment.start,
                                  children: [
                                    pw.Column(
                                      crossAxisAlignment:
                                          pw.CrossAxisAlignment.start,
                                      children: [
                                        pw.Text(
                                          'Subtotal :',
                                          style: pw.TextStyle(
                                            color: PdfColors.black,
                                            fontWeight: pw.FontWeight.bold,
                                            fontSize: 14,
                                          ),
                                        ),
                                        pw.Text(
                                          'Discount :',
                                          style: pw.TextStyle(
                                            color: PdfColors.black,
                                            fontWeight: pw.FontWeight.bold,
                                            fontSize: 14,
                                          ),
                                        ),
                                        pw.Text(
                                          'Tax :',
                                          style: pw.TextStyle(
                                            color: PdfColors.black,
                                            fontWeight: pw.FontWeight.bold,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                    pw.SizedBox(width: 20),
                                    pw.Column(
                                      crossAxisAlignment:
                                          pw.CrossAxisAlignment.start,
                                      children: [
                                        pw.Text('$subtotal',
                                            style: const pw.TextStyle(
                                              color: PdfColors.black,
                                              fontSize: 14,
                                            )),
                                        pw.Text('${Globals.Discount}%',
                                            style: const pw.TextStyle(
                                              color: PdfColors.black,
                                              fontSize: 14,
                                            )),
                                        // pw.Text(
                                        //   '${Globals.Taxrate}%',
                                        //   style: const pw.TextStyle(
                                        //     color: PdfColors.black,
                                        //     fontSize: 14,
                                        //   ),
                                        // ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            pw.SizedBox(height: 10),
                            pw.Divider(
                              thickness: 1,
                              color: PdfColors.black,
                              indent: 300,
                            ),
                            pw.SizedBox(height: 10),
                            pw.Row(
                              mainAxisAlignment:
                                  pw.MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: pw.CrossAxisAlignment.end,
                              children: [
                                pw.Row(
                                  crossAxisAlignment:
                                      pw.CrossAxisAlignment.start,
                                  children: [
                                    pw.SizedBox(width: 310),
                                    pw.Text(
                                      '  Total :',
                                      style: pw.TextStyle(
                                        color: PdfColors.black,
                                        fontWeight: pw.FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                    pw.SizedBox(width: 58),
                                    pw.Text(
                                      "${subtotal - subtotal * 10 / 100}",
                                      style: const pw.TextStyle(
                                        color: PdfColors.black,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            pw.SizedBox(
                              height: 50,
                            ),
                            pw.Align(
                              alignment: pw.Alignment.center,
                              child: pw.Text(
                                'Thanks ${Globals.Clientname} for you order!',
                                style: const pw.TextStyle(
                                  fontSize: 19,
                                  color: PdfColors.black,
                                ),
                              ),
                            ),
                            pw.SizedBox(height: 44),
                            pw.Divider(
                              thickness: 1,
                              color: PdfColors.black,
                            ),
                            pw.SizedBox(height: 5),
                            pw.Align(
                              alignment: pw.Alignment.center,
                              child: pw.Row(
                                mainAxisAlignment: pw.MainAxisAlignment.center,
                                children: [
                                  pw.Text(
                                    'This invoice was generated with ',
                                    style: const pw.TextStyle(
                                      fontSize: 12,
                                      color: PdfColors.black,
                                    ),
                                  ),
                                  pw.Text(
                                    'Invoice Maker App',
                                    style: const pw.TextStyle(
                                      fontSize: 12,
                                      color: PdfColors.teal,
                                      decoration: pw.TextDecoration.underline,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      }),
                );
                await Printing.layoutPdf(
                  onLayout: (formate) => pdf.save(),
                );
              });
            },
            icon: const Icon(
              Icons.download,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Headertitle(
                  index: "01",
                  title: "Business Info",
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Text(
                      "Business Name : ",
                      style: myfonts1,
                    ),
                    Text(
                      "${Globals.Businessname}",
                      style: myfonts2,
                    ),
                  ],
                ),
                divier(),
                Row(
                  children: [
                    Text(
                      "Business E-mail : ",
                      style: myfonts1,
                    ),
                    Text(
                      "${Globals.Bussinessemail}",
                      style: myfonts2,
                    ),
                  ],
                ),
                divier(),
                Row(
                  children: [
                    Text(
                      "Business Address : ",
                      style: myfonts1,
                    ),
                    Text(
                      "${Globals.Bussinessaddress}",
                      style: myfonts2,
                    ),
                  ],
                ),
                divier(),
                Row(
                  children: [
                    Text(
                      "Business Country : ",
                      style: myfonts1,
                    ),
                    Text(
                      "${Globals.Bussinesscountry}",
                      style: myfonts2,
                    ),
                  ],
                ),
                divier(),
                const SizedBox(
                  height: 20,
                ),
                Headertitle(index: "02", title: "Client Info"),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Client Name : ",
                      style: myfonts1,
                    ),
                    Text(
                      "${Globals.Clientname}",
                      style: myfonts2,
                    ),
                  ],
                ),
                divier(),
                Row(
                  children: [
                    Text(
                      "Client E-mail : ",
                      style: myfonts1,
                    ),
                    Text(
                      "${Globals.Clientemail}",
                      style: myfonts2,
                    ),
                  ],
                ),
                divier(),
                Row(
                  children: [
                    Text(
                      "Client Address : ",
                      style: myfonts1,
                    ),
                    Text(
                      "${Globals.Clientaddress}",
                      style: myfonts2,
                    ),
                  ],
                ),
                divier(),
                Row(
                  children: [
                    Text(
                      "Client Country : ",
                      style: myfonts1,
                    ),
                    Text(
                      "${Globals.Clientcountry}",
                      style: myfonts2,
                    ),
                  ],
                ),
                divier(),
                const SizedBox(
                  height: 20,
                ),
                Headertitle(
                  index: "03",
                  title: "Invoice Setting",
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Invoice Number : ",
                      style: myfonts1,
                    ),
                    Text(
                      "${Globals.Invoicenumber}",
                      style: myfonts2,
                    ),
                  ],
                ),
                divier(),
                Row(
                  children: [
                    Text(
                      "Invoice Date : ",
                      style: myfonts1,
                    ),
                    Text(
                      "${Globals.Invoicedate}",
                      style: myfonts2,
                    ),
                  ],
                ),
                divier(),
                Row(
                  children: [
                    Text(
                      "Currency : ",
                      style: myfonts1,
                    ),
                    Text(
                      "${Globals.Currency}",
                      style: myfonts2,
                    ),
                    divier(),
                  ],
                ),
                divier(),
                Row(
                  children: [
                    Text(
                      "Tax type : ",
                      style: myfonts1,
                    ),
                    Text(
                      "${Globals.Taxtype}",
                      style: myfonts2,
                    ),
                  ],
                ),
                divier(),
                Row(
                  children: [
                    Text(
                      "Tax rate : ",
                      style: myfonts1,
                    ),
                    Text(
                      "${Globals.Taxrate}",
                      style: myfonts2,
                    ),
                  ],
                ),
                divier(),
                const SizedBox(
                  height: 20,
                ),
                Headertitle(index: "04", title: "Billing Items"),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Product Name : ",
                      style: myfonts1,
                    ),
                    Text(
                      "${Globals.ProductName}",
                      style: myfonts2,
                    ),
                  ],
                ),
                divier(),
                Row(
                  children: [
                    Text(
                      "Description : ",
                      style: myfonts1,
                    ),
                    Text(
                      "${Globals.Description}",
                      style: myfonts2,
                    ),
                  ],
                ),
                divier(),
                Row(
                  children: [
                    Text(
                      "Price : ",
                      style: myfonts1,
                    ),
                    Text(
                      "${Globals.Price}",
                      style: myfonts2,
                    ),
                  ],
                ),
                divier(),
                Row(
                  children: [
                    Text(
                      "Quantity : ",
                      style: myfonts1,
                    ),
                    Text(
                      "${Globals.Quantity}",
                      style: myfonts2,
                    ),
                  ],
                ),
                divier(),
                Row(
                  children: [
                    Text(
                      "Subtotal : ",
                      style: myfonts1,
                    ),
                    Text(
                      "$subtotal",
                      style: myfonts2,
                    ),
                  ],
                ),
                divier(),
                Row(
                  children: [
                    Text(
                      "Discount : ",
                      style: myfonts1,
                    ),
                    Text(
                      "${subtotal * 10 / 100}",
                      style: myfonts2,
                    ),
                  ],
                ),
                divier(),
                Row(
                  children: [
                    Text(
                      "Total : ",
                      style: myfonts1,
                    ),
                    Text(
                      "${subtotal - subtotal * 10 / 100}",
                      style: myfonts2,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget Headertitle({required index, required title}) {
    // aa su
    return Column(
      children: [
        Row(
          children: [
            Text(
              "${index}",
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 35),
            ),
            const Text(
              " | ",
              style: TextStyle(
                  color: Colors.teal,
                  fontSize: 35,
                  fontWeight: FontWeight.w900),
            ),
            Text(
              "${title}",
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 35),
            ),
          ],
        ),
        const Divider(
          color: Colors.teal,
          thickness: 3,
        ),
      ],
    );
  }

  Widget divier() {
    return Divider(
      thickness: 2,
      color: Colors.grey.shade300,
    );
  }
}
