require "integrations/requests/apiary/5_label_printer_resource/spec_helper"
describe "create_a_tube_and_spin_column_label_printer_and_print_a_tube_and_a_plate_label_with_it", :label_printer => true do
  include_context "use core context service"
  it "create_a_tube_and_spin_column_label_printer_and_print_a_tube_and_a_plate_label_with_it" do


  # **Use the create label printer action.**
  # 
  # * `name` the name of the label printer to use
  # * `templates` the list of templates to use with this printer
  # * `label_type` the type of the label in the printer
  # * `header` the header of the labels
  # * `footer` the footer of the labels

    header('Accept', 'application/json')
    header('Content-Type', 'application/json')

    response = post "/actions/create_label_printer", <<-EOD
    {
    "create_label_printer": {
        "name": "e367bc",
        "templates": [
            {
                "name": "tube",
                "description": "normal tube template",
                "content": "QwpQQzAwMTswMDM4LDAyMTAsMDUsMDUsSCwrMDMsMTEsQgpQQzAwMjswMTIwLDAyMTAsMDUsMDUsSCwrMDIsMTEsQgpQQzAwMzswMDcwLDAyMTAsMDUsMDUsSCwrMDIsMTEsQgpQQzAwNTswMjQwLDAxNjUsMDUsMSxHLCswMCwwMCxCClBDMDA2OzAyMjAsMDE5MywwNSwxLEcsKzAwLDAwLEIKUEMwMDc7MDIyNSwwMjE3LDA1LDEsRywrMDEsMDAsQgpQQzAwODswMTUwLDAyMTAsMDUsMSxHLCswMSwxMSxCClhCMDE7MDA0MywwMTAwLDUsMywwMSwwLDAxMDAsKzAwMDAwMDAwMDAsMDAyLDAsMDAKQwpSQzAwMTt7eyNtYWluLmxhYmVsX3RleHR9fXt7bWFpbi5sYWJlbF90ZXh0LnRleHQxfX17ey9tYWluLmxhYmVsX3RleHR9fQpSQzAwMjt7eyNtYWluLmxhYmVsX3RleHR9fXt7bWFpbi5sYWJlbF90ZXh0LnRleHQyfX17ey9tYWluLmxhYmVsX3RleHR9fQpSQzAwMzt7eyNtYWluLmxhYmVsX3RleHR9fXt7bWFpbi5sYWJlbF90ZXh0LnRleHQzfX17ey9tYWluLmxhYmVsX3RleHR9fQpSQzAwNTt7eyNtYWluLmxhYmVsX3RleHR9fXt7bWFpbi5sYWJlbF90ZXh0LnRleHQ1fX17ey9tYWluLmxhYmVsX3RleHR9fQpSQzAwNjt7eyNtYWluLmxhYmVsX3RleHR9fXt7bWFpbi5sYWJlbF90ZXh0LnRleHQ2fX17ey9tYWluLmxhYmVsX3RleHR9fQpSQzAwNzt7eyNtYWluLmxhYmVsX3RleHR9fXt7bWFpbi5sYWJlbF90ZXh0LnRleHQ3fX17ey9tYWluLmxhYmVsX3RleHR9fQpSQzAwODt7eyNtYWluLmxhYmVsX3RleHR9fXt7bWFpbi5sYWJlbF90ZXh0LnRleHQ4fX17ey9tYWluLmxhYmVsX3RleHR9fQpSQjAxO3t7bWFpbi5lYW4xM319ClhTO0ksMDAwMSwwMDAyQzMyMDE="
            },
            {
                "name": "spin_column",
                "description": "normal spin column template",
                "content": "QwpQQzAwMTswMDM4LDAyMTAsMDUsMDUsSCwrMDMsMTEsQgpQQzAwMjswMTIwLDAyMTAsMDUsMDUsSCwrMDIsMTEsQgpQQzAwMzswMDcwLDAyMTAsMDUsMDUsSCwrMDIsMTEsQgpQQzAwNTswMjQwLDAxNjUsMDUsMSxHLCswMCwwMCxCClBDMDA2OzAyMjAsMDE5MywwNSwxLEcsKzAwLDAwLEIKUEMwMDc7MDIyNSwwMjE3LDA1LDEsRywrMDEsMDAsQgpQQzAwODswMTUwLDAyMTAsMDUsMSxHLCswMSwxMSxCClhCMDE7MDA0MywwMTAwLDUsMywwMSwwLDAxMDAsKzAwMDAwMDAwMDAsMDAyLDAsMDAKWEIwMjswMzAwLDAxNjUsUSwyMCwwMywwNSwxCkMKUkMwMDE7e3sjbWFpbi5sYWJlbF90ZXh0fX17e21haW4ubGFiZWxfdGV4dC50ZXh0MX19e3svbWFpbi5sYWJlbF90ZXh0fX0KUkMwMDI7e3sjbWFpbi5sYWJlbF90ZXh0fX17e21haW4ubGFiZWxfdGV4dC50ZXh0Mn19e3svbWFpbi5sYWJlbF90ZXh0fX0KUkMwMDM7e3sjbWFpbi5sYWJlbF90ZXh0fX17e21haW4ubGFiZWxfdGV4dC50ZXh0M319e3svbWFpbi5sYWJlbF90ZXh0fX0KUkMwMDU7e3sjbWFpbi5sYWJlbF90ZXh0fX17e21haW4ubGFiZWxfdGV4dC50ZXh0NX19e3svbWFpbi5sYWJlbF90ZXh0fX0KUkMwMDY7e3sjbWFpbi5sYWJlbF90ZXh0fX17e21haW4ubGFiZWxfdGV4dC50ZXh0Nn19e3svbWFpbi5sYWJlbF90ZXh0fX0KUkMwMDc7e3sjbWFpbi5sYWJlbF90ZXh0fX17e21haW4ubGFiZWxfdGV4dC50ZXh0N319e3svbWFpbi5sYWJlbF90ZXh0fX0KUkMwMDg7e3sjbWFpbi5sYWJlbF90ZXh0fX17e21haW4ubGFiZWxfdGV4dC50ZXh0OH19e3svbWFpbi5sYWJlbF90ZXh0fX0KUkIwMTt7e21haW4uZWFuMTN9fQpSQjAyO3t7ZG90LmVhbjEzfX0KWFM7SSwwMDAxLDAwMDJDMzIwMQo="
            }
        ],
        "label_type": "tube and spin column labels",
        "header": "UEMwMDE7MDExMiwwMDIwLDA1LDA1LEgsKzAyLDExLEIKUEMwMDI7MDA2MiwwMDIwLDA1LDA1LEgsKzAyLDExLEIKQwpSQzAwMTt7e2hlYWRlcl90ZXh0MX19ClJDMDAyO3t7aGVhZGVyX3RleHQyfX0KWFM7SSwwMDAxLDAwMDJDNTIwMQ==",
        "footer": "UEMwMDE7MDExMiwwMDIwLDA1LDA1LEgsKzAyLDExLEIKUEMwMDI7MDA2MiwwMDIwLDA1LDA1LEgsKzAyLDExLEIKQwpSQzAwMTt7e2Zvb3Rlcl90ZXh0MX19ClJDMDAyO3t7Zm9vdGVyX3RleHQyfX0KWFM7SSwwMDAxLDAwMDJDNTIwMQpD"
    }
}
    EOD
    response.status.should == 200
    response.body.should match_json <<-EOD
    {
    "create_label_printer": {
        "actions": {
        },
        "user": "user",
        "application": "application",
        "result": {
            "label_printer": {
                "actions": {
                    "read": "http://example.org/11111111-2222-3333-4444-555555555555",
                    "update": "http://example.org/11111111-2222-3333-4444-555555555555",
                    "delete": "http://example.org/11111111-2222-3333-4444-555555555555",
                    "create": "http://example.org/11111111-2222-3333-4444-555555555555"
                },
                "uuid": "11111111-2222-3333-4444-555555555555",
                "name": "e367bc",
                "templates": [
                    {
                        "name": "tube",
                        "description": "normal tube template",
                        "content": "QwpQQzAwMTswMDM4LDAyMTAsMDUsMDUsSCwrMDMsMTEsQgpQQzAwMjswMTIwLDAyMTAsMDUsMDUsSCwrMDIsMTEsQgpQQzAwMzswMDcwLDAyMTAsMDUsMDUsSCwrMDIsMTEsQgpQQzAwNTswMjQwLDAxNjUsMDUsMSxHLCswMCwwMCxCClBDMDA2OzAyMjAsMDE5MywwNSwxLEcsKzAwLDAwLEIKUEMwMDc7MDIyNSwwMjE3LDA1LDEsRywrMDEsMDAsQgpQQzAwODswMTUwLDAyMTAsMDUsMSxHLCswMSwxMSxCClhCMDE7MDA0MywwMTAwLDUsMywwMSwwLDAxMDAsKzAwMDAwMDAwMDAsMDAyLDAsMDAKQwpSQzAwMTt7eyNtYWluLmxhYmVsX3RleHR9fXt7bWFpbi5sYWJlbF90ZXh0LnRleHQxfX17ey9tYWluLmxhYmVsX3RleHR9fQpSQzAwMjt7eyNtYWluLmxhYmVsX3RleHR9fXt7bWFpbi5sYWJlbF90ZXh0LnRleHQyfX17ey9tYWluLmxhYmVsX3RleHR9fQpSQzAwMzt7eyNtYWluLmxhYmVsX3RleHR9fXt7bWFpbi5sYWJlbF90ZXh0LnRleHQzfX17ey9tYWluLmxhYmVsX3RleHR9fQpSQzAwNTt7eyNtYWluLmxhYmVsX3RleHR9fXt7bWFpbi5sYWJlbF90ZXh0LnRleHQ1fX17ey9tYWluLmxhYmVsX3RleHR9fQpSQzAwNjt7eyNtYWluLmxhYmVsX3RleHR9fXt7bWFpbi5sYWJlbF90ZXh0LnRleHQ2fX17ey9tYWluLmxhYmVsX3RleHR9fQpSQzAwNzt7eyNtYWluLmxhYmVsX3RleHR9fXt7bWFpbi5sYWJlbF90ZXh0LnRleHQ3fX17ey9tYWluLmxhYmVsX3RleHR9fQpSQzAwODt7eyNtYWluLmxhYmVsX3RleHR9fXt7bWFpbi5sYWJlbF90ZXh0LnRleHQ4fX17ey9tYWluLmxhYmVsX3RleHR9fQpSQjAxO3t7bWFpbi5lYW4xM319ClhTO0ksMDAwMSwwMDAyQzMyMDE="
                    },
                    {
                        "name": "spin_column",
                        "description": "normal spin column template",
                        "content": "QwpQQzAwMTswMDM4LDAyMTAsMDUsMDUsSCwrMDMsMTEsQgpQQzAwMjswMTIwLDAyMTAsMDUsMDUsSCwrMDIsMTEsQgpQQzAwMzswMDcwLDAyMTAsMDUsMDUsSCwrMDIsMTEsQgpQQzAwNTswMjQwLDAxNjUsMDUsMSxHLCswMCwwMCxCClBDMDA2OzAyMjAsMDE5MywwNSwxLEcsKzAwLDAwLEIKUEMwMDc7MDIyNSwwMjE3LDA1LDEsRywrMDEsMDAsQgpQQzAwODswMTUwLDAyMTAsMDUsMSxHLCswMSwxMSxCClhCMDE7MDA0MywwMTAwLDUsMywwMSwwLDAxMDAsKzAwMDAwMDAwMDAsMDAyLDAsMDAKWEIwMjswMzAwLDAxNjUsUSwyMCwwMywwNSwxCkMKUkMwMDE7e3sjbWFpbi5sYWJlbF90ZXh0fX17e21haW4ubGFiZWxfdGV4dC50ZXh0MX19e3svbWFpbi5sYWJlbF90ZXh0fX0KUkMwMDI7e3sjbWFpbi5sYWJlbF90ZXh0fX17e21haW4ubGFiZWxfdGV4dC50ZXh0Mn19e3svbWFpbi5sYWJlbF90ZXh0fX0KUkMwMDM7e3sjbWFpbi5sYWJlbF90ZXh0fX17e21haW4ubGFiZWxfdGV4dC50ZXh0M319e3svbWFpbi5sYWJlbF90ZXh0fX0KUkMwMDU7e3sjbWFpbi5sYWJlbF90ZXh0fX17e21haW4ubGFiZWxfdGV4dC50ZXh0NX19e3svbWFpbi5sYWJlbF90ZXh0fX0KUkMwMDY7e3sjbWFpbi5sYWJlbF90ZXh0fX17e21haW4ubGFiZWxfdGV4dC50ZXh0Nn19e3svbWFpbi5sYWJlbF90ZXh0fX0KUkMwMDc7e3sjbWFpbi5sYWJlbF90ZXh0fX17e21haW4ubGFiZWxfdGV4dC50ZXh0N319e3svbWFpbi5sYWJlbF90ZXh0fX0KUkMwMDg7e3sjbWFpbi5sYWJlbF90ZXh0fX17e21haW4ubGFiZWxfdGV4dC50ZXh0OH19e3svbWFpbi5sYWJlbF90ZXh0fX0KUkIwMTt7e21haW4uZWFuMTN9fQpSQjAyO3t7ZG90LmVhbjEzfX0KWFM7SSwwMDAxLDAwMDJDMzIwMQo="
                    }
                ],
                "label_type": "tube and spin column labels",
                "header": "UEMwMDE7MDExMiwwMDIwLDA1LDA1LEgsKzAyLDExLEIKUEMwMDI7MDA2MiwwMDIwLDA1LDA1LEgsKzAyLDExLEIKQwpSQzAwMTt7e2hlYWRlcl90ZXh0MX19ClJDMDAyO3t7aGVhZGVyX3RleHQyfX0KWFM7SSwwMDAxLDAwMDJDNTIwMQ==",
                "footer": "UEMwMDE7MDExMiwwMDIwLDA1LDA1LEgsKzAyLDExLEIKUEMwMDI7MDA2MiwwMDIwLDA1LDA1LEgsKzAyLDExLEIKQwpSQzAwMTt7e2Zvb3Rlcl90ZXh0MX19ClJDMDAyO3t7Zm9vdGVyX3RleHQyfX0KWFM7SSwwMDAxLDAwMDJDNTIwMQpD"
            },
            "uuid": "11111111-2222-3333-4444-555555555555"
        },
        "name": "e367bc",
        "templates": [
            {
                "name": "tube",
                "description": "normal tube template",
                "content": "QwpQQzAwMTswMDM4LDAyMTAsMDUsMDUsSCwrMDMsMTEsQgpQQzAwMjswMTIwLDAyMTAsMDUsMDUsSCwrMDIsMTEsQgpQQzAwMzswMDcwLDAyMTAsMDUsMDUsSCwrMDIsMTEsQgpQQzAwNTswMjQwLDAxNjUsMDUsMSxHLCswMCwwMCxCClBDMDA2OzAyMjAsMDE5MywwNSwxLEcsKzAwLDAwLEIKUEMwMDc7MDIyNSwwMjE3LDA1LDEsRywrMDEsMDAsQgpQQzAwODswMTUwLDAyMTAsMDUsMSxHLCswMSwxMSxCClhCMDE7MDA0MywwMTAwLDUsMywwMSwwLDAxMDAsKzAwMDAwMDAwMDAsMDAyLDAsMDAKQwpSQzAwMTt7eyNtYWluLmxhYmVsX3RleHR9fXt7bWFpbi5sYWJlbF90ZXh0LnRleHQxfX17ey9tYWluLmxhYmVsX3RleHR9fQpSQzAwMjt7eyNtYWluLmxhYmVsX3RleHR9fXt7bWFpbi5sYWJlbF90ZXh0LnRleHQyfX17ey9tYWluLmxhYmVsX3RleHR9fQpSQzAwMzt7eyNtYWluLmxhYmVsX3RleHR9fXt7bWFpbi5sYWJlbF90ZXh0LnRleHQzfX17ey9tYWluLmxhYmVsX3RleHR9fQpSQzAwNTt7eyNtYWluLmxhYmVsX3RleHR9fXt7bWFpbi5sYWJlbF90ZXh0LnRleHQ1fX17ey9tYWluLmxhYmVsX3RleHR9fQpSQzAwNjt7eyNtYWluLmxhYmVsX3RleHR9fXt7bWFpbi5sYWJlbF90ZXh0LnRleHQ2fX17ey9tYWluLmxhYmVsX3RleHR9fQpSQzAwNzt7eyNtYWluLmxhYmVsX3RleHR9fXt7bWFpbi5sYWJlbF90ZXh0LnRleHQ3fX17ey9tYWluLmxhYmVsX3RleHR9fQpSQzAwODt7eyNtYWluLmxhYmVsX3RleHR9fXt7bWFpbi5sYWJlbF90ZXh0LnRleHQ4fX17ey9tYWluLmxhYmVsX3RleHR9fQpSQjAxO3t7bWFpbi5lYW4xM319ClhTO0ksMDAwMSwwMDAyQzMyMDE="
            },
            {
                "name": "spin_column",
                "description": "normal spin column template",
                "content": "QwpQQzAwMTswMDM4LDAyMTAsMDUsMDUsSCwrMDMsMTEsQgpQQzAwMjswMTIwLDAyMTAsMDUsMDUsSCwrMDIsMTEsQgpQQzAwMzswMDcwLDAyMTAsMDUsMDUsSCwrMDIsMTEsQgpQQzAwNTswMjQwLDAxNjUsMDUsMSxHLCswMCwwMCxCClBDMDA2OzAyMjAsMDE5MywwNSwxLEcsKzAwLDAwLEIKUEMwMDc7MDIyNSwwMjE3LDA1LDEsRywrMDEsMDAsQgpQQzAwODswMTUwLDAyMTAsMDUsMSxHLCswMSwxMSxCClhCMDE7MDA0MywwMTAwLDUsMywwMSwwLDAxMDAsKzAwMDAwMDAwMDAsMDAyLDAsMDAKWEIwMjswMzAwLDAxNjUsUSwyMCwwMywwNSwxCkMKUkMwMDE7e3sjbWFpbi5sYWJlbF90ZXh0fX17e21haW4ubGFiZWxfdGV4dC50ZXh0MX19e3svbWFpbi5sYWJlbF90ZXh0fX0KUkMwMDI7e3sjbWFpbi5sYWJlbF90ZXh0fX17e21haW4ubGFiZWxfdGV4dC50ZXh0Mn19e3svbWFpbi5sYWJlbF90ZXh0fX0KUkMwMDM7e3sjbWFpbi5sYWJlbF90ZXh0fX17e21haW4ubGFiZWxfdGV4dC50ZXh0M319e3svbWFpbi5sYWJlbF90ZXh0fX0KUkMwMDU7e3sjbWFpbi5sYWJlbF90ZXh0fX17e21haW4ubGFiZWxfdGV4dC50ZXh0NX19e3svbWFpbi5sYWJlbF90ZXh0fX0KUkMwMDY7e3sjbWFpbi5sYWJlbF90ZXh0fX17e21haW4ubGFiZWxfdGV4dC50ZXh0Nn19e3svbWFpbi5sYWJlbF90ZXh0fX0KUkMwMDc7e3sjbWFpbi5sYWJlbF90ZXh0fX17e21haW4ubGFiZWxfdGV4dC50ZXh0N319e3svbWFpbi5sYWJlbF90ZXh0fX0KUkMwMDg7e3sjbWFpbi5sYWJlbF90ZXh0fX17e21haW4ubGFiZWxfdGV4dC50ZXh0OH19e3svbWFpbi5sYWJlbF90ZXh0fX0KUkIwMTt7e21haW4uZWFuMTN9fQpSQjAyO3t7ZG90LmVhbjEzfX0KWFM7SSwwMDAxLDAwMDJDMzIwMQo="
            }
        ],
        "label_type": "tube and spin column labels",
        "header": "UEMwMDE7MDExMiwwMDIwLDA1LDA1LEgsKzAyLDExLEIKUEMwMDI7MDA2MiwwMDIwLDA1LDA1LEgsKzAyLDExLEIKQwpSQzAwMTt7e2hlYWRlcl90ZXh0MX19ClJDMDAyO3t7aGVhZGVyX3RleHQyfX0KWFM7SSwwMDAxLDAwMDJDNTIwMQ==",
        "footer": "UEMwMDE7MDExMiwwMDIwLDA1LDA1LEgsKzAyLDExLEIKUEMwMDI7MDA2MiwwMDIwLDA1LDA1LEgsKzAyLDExLEIKQwpSQzAwMTt7e2Zvb3Rlcl90ZXh0MX19ClJDMDAyO3t7Zm9vdGVyX3RleHQyfX0KWFM7SSwwMDAxLDAwMDJDNTIwMQpD"
    }
}
    EOD

  # **Call the print action on the label printer.**
    # I have to stub the printing, because the string to print
    # contains null bytes.
    Lims::SupportApp::LabelPrinter::PrintLabel.any_instance.stub(:print_labels) do
      # TODO ke4
    end

    header('Accept', 'application/json')
    header('Content-Type', 'application/json')

    response = post "/actions/print_label", <<-EOD
    {
    "print_label": {
        "uuid": "11111111-2222-3333-4444-555555555555",
        "labels": [
            {
                "template": "tube",
                "main": {
                    "ean13": "2748670880727",
                    "label_text": {
                        "text1": "pos1",
                        "text3": "pos3"
                    }
                }
            },
            {
                "template": "plate",
                "main": {
                    "ean13": "2741854757853",
                    "label_text": {
                        "text1": "sp1",
                        "text3": "sp2"
                    }
                }
            }
        ],
        "header_text": {
            "header_text1": "header by ke4",
            "header_text2": "2013-05-29 13:51:27"
        },
        "footer_text": {
            "footer_text1": "footer by ke4",
            "footer_text2": "2013-05-29 13:51:27"
        }
    }
}
    EOD
    response.status.should == 400
    response.body.should match_json <<-EOD
    {
    "general": [
        "The request cannot be fulfilled due to bad parameter/syntax. The following template(s) are invalid: plate."
    ]
}
    EOD

  end
end