import 'dart:core';

import 'package:flutter/material.dart';

import '../../models/Globals.dart';


class AddDetail_page extends StatefulWidget {
  const AddDetail_page({Key? key}) : super(key: key);

  @override
  State<AddDetail_page> createState() => _AddDetail_pageState();
}

class _AddDetail_pageState extends State<AddDetail_page> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  //1 - Business category:
  TextEditingController BussinessnameControlller = TextEditingController();
  TextEditingController BussinnessemailControlller = TextEditingController();
  TextEditingController BusinessaddressControlller = TextEditingController();
  TextEditingController BusinesscountryControlller = TextEditingController();

  //2 - Client category:
  TextEditingController ClientnameControlller = TextEditingController();
  TextEditingController ClientemailControlller = TextEditingController();
  TextEditingController ClientaddressControlller = TextEditingController();
  TextEditingController ClientcountryControlller = TextEditingController();

  //3 - Invoice:
  TextEditingController InvoicenumberControlller = TextEditingController();
  TextEditingController InvoiceDateControlller = TextEditingController();
  TextEditingController CurrancyControlller = TextEditingController();
  TextEditingController TaxtypeControlller = TextEditingController();
  TextEditingController TaxrateControlller = TextEditingController();

  //4 - Billing:
  TextEditingController ProductnameController = TextEditingController();
  TextEditingController DescriptionController = TextEditingController();
  TextEditingController PriceController = TextEditingController();
  TextEditingController QuntityController = TextEditingController();
  TextEditingController DiscountController = TextEditingController();
  TextEditingController SubtotalController = TextEditingController();
  TextEditingController TotalController = TextEditingController();
  TextEditingController EndtotalController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Invoice Details",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding:  EdgeInsets.only(right: 10),
            child: (
              IconButton(
                icon: Icon(Icons.picture_as_pdf,size: 30,),
                onPressed: (){
                  setState(() {
                    Navigator.of(context).pushNamed('Pdf_page');
                  });
                },
              )
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          child: Form(
            key: formkey,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Headertitle(
                    index: "01",
                    title: "Business Info",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: BussinessnameControlller,
                    textInputAction: TextInputAction.next,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please enter Business name";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (v) {
                      Globals.Businessname = v;
                    },
                    decoration: const InputDecoration(
                      hintText: "Business name or website ",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.black54,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3,
                          color: Colors.teal,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: BussinnessemailControlller,
                    textInputAction: TextInputAction.next,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please enter Business e-mail";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (v) {
                      Globals.Bussinessemail = v;
                    },
                    decoration: const InputDecoration(
                      hintText: "Business E-mail ",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.black54,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3,
                          color: Colors.teal,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: BusinessaddressControlller,
                    textInputAction: TextInputAction.next,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please enter Business Address";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (v) {
                      Globals.Bussinessaddress = v;
                    },
                    decoration: const InputDecoration(
                      hintText: "Business Address ",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.black54,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3,
                          color: Colors.teal,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: BusinesscountryControlller,
                    textInputAction: TextInputAction.next,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please enter Business Country";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (v) {
                      Globals.Bussinesscountry = v;
                    },
                    decoration: const InputDecoration(
                      hintText: "Business Country ",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.black54,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3,
                          color: Colors.teal,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Headertitle(index: "02", title: "Client info"),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: ClientnameControlller,
                    textInputAction: TextInputAction.next,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please enter Client name";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (v) {
                      Globals.Clientname = v;
                    },
                    decoration: const InputDecoration(
                      hintText: "Client name ",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.black54,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3,
                          color: Colors.teal,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: ClientemailControlller,
                    textInputAction: TextInputAction.next,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please enter Client e-mail";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (v){
                      Globals.Clientemail = v;
                    },
                    decoration: const InputDecoration(
                      hintText: "Client E-mail ",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.black54,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3,
                          color: Colors.teal,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: ClientaddressControlller,
                    textInputAction: TextInputAction.next,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please enter Client Address";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (v) {
                      Globals.Clientaddress = v;
                    },
                    decoration: const InputDecoration(
                      hintText: "Client Address ",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.black54,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3,
                          color: Colors.teal,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: ClientcountryControlller,
                    textInputAction: TextInputAction.next,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please enter Client Country";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (v) {
                      Globals.Clientcountry = v;
                    },
                    decoration: const InputDecoration(
                      hintText: "Client Country ",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.black54,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3,
                          color: Colors.teal,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Headertitle(index: "03", title: "Invoice Info"),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Invoice Details",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: InvoicenumberControlller,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please enter invoice number";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (v) {
                      Globals.Invoicenumber = v;
                    },
                    decoration: const InputDecoration(
                      hintText: "Invoice Number ",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.black54,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3,
                          color: Colors.teal,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: InvoiceDateControlller,
                    textInputAction: TextInputAction.next,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please enter invoice date";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (v) {
                      Globals.Invoicedate = v;
                    },
                    decoration: const InputDecoration(
                      hintText: "Date",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.black54,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3,
                          color: Colors.teal,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Payment Details",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: CurrancyControlller,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "please enter currency detail";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (v) {
                      Globals.Currency = v;
                    },
                    decoration: const InputDecoration(
                      hintText: "Currency",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.black54,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3,
                          color: Colors.teal,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: TaxtypeControlller,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please enter Tax-type detail";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (v) {
                      Globals.Taxtype = v;
                    },
                    decoration: const InputDecoration(
                      hintText: "Tax Type",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.black54,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3,
                          color: Colors.teal,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: TaxrateControlller,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please enter tax-rate";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (v) {
                      Globals.Taxrate = v;
                    },
                    decoration: const InputDecoration(
                      hintText: "Tax Rate",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.black54,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3,
                          color: Colors.teal,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Headertitle(index: "04", title: "Billing Items"),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: ProductnameController,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please enter product name";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (v) {
                      Globals.ProductName = v;
                    },
                    decoration: const InputDecoration(
                      hintText: "Product name",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.black54,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3,
                          color: Colors.teal,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: DescriptionController,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please enter product Description";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (v) {
                      Globals.Description = v;
                    },
                    decoration: const InputDecoration(
                      hintText: "Description",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.black54,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3,
                          color: Colors.teal,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: PriceController,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please enter price";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (v) {
                      Globals.Price = v;
                    },
                    decoration: const InputDecoration(
                      hintText: "Price",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.black54,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3,
                          color: Colors.teal,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: QuntityController,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "please enter Quantity";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (v) {
                      Globals.Quantity =v;
                    },
                    decoration: const InputDecoration(
                      hintText: "Quantity",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.black54,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3,
                          color: Colors.teal,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: DiscountController,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please enter Discount";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (v) {
                      Globals.Discount = v;
                    },
                    decoration: const InputDecoration(
                      hintText: "Discount",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.black54,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3,
                          color: Colors.teal,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 40,
                        width: 120,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              Colors.teal,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              if (formkey.currentState!.validate()) {
                                formkey.currentState!.save();
                                ScaffoldMessenger.of(context)
                                  ..removeCurrentSnackBar()
                                  ..showSnackBar(
                                    const SnackBar(
                                      content: Text("Sucessfully validate..."),
                                      backgroundColor: Colors.green,
                                      behavior: SnackBarBehavior.floating,
                                    ),

                                  );
                                
                              } else {
                                ScaffoldMessenger.of(context)
                                  ..removeCurrentSnackBar()
                                  ..showSnackBar(
                                    const SnackBar(
                                      content:
                                          Text("Sucessfully not validate..."),
                                      backgroundColor: Colors.red,
                                      behavior: SnackBarBehavior.floating,
                                    ),
                                  );
                              }
                            });
                          },
                          child: const Text(
                            "Save",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                 // Text("${Globals.Businessname}")
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget Headertitle({required index, required title}) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "$index",
              style: const TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 35,
                  color: Colors.black),
            ),
            const Text(
              " | ",
              style: TextStyle(
                  color: Colors.teal,
                  fontSize: 35,
                  fontWeight: FontWeight.w900),
            ),
            Text(
              "$title",
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize: 35,
              ),
            ),
          ],
        ),
        const Divider(
          color: Colors.teal,
          thickness: 2,
        ),
      ],
    );
  }
}
