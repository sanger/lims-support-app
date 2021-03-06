require "integrations/requests/apiary/3_barcode_resource/spec_helper"
describe "list_actions_for_a_barcode_resource", :barcode => true do
  include_context "use core context service"
  it "list_actions_for_a_barcode_resource" do
  # **List actions for a barcode resource.**
  # 
  # * `create` creates a new barcode via HTTP POST request
  # * `read` currently returns the list of actions for a barcode resource via HTTP GET request
  # * `first` lists the first barcode resources in a page browsing system
  # * `last` lists the last barcode resources in a page browsing system

    header('Accept', 'application/json')
    header('Content-Type', 'application/json')

    response = get "/barcodes"
    response.status.should == 200
    response.body.should match_json <<-EOD
    {
    "barcodes": {
        "actions": {
            "create": "http://example.org/barcodes",
            "read": "http://example.org/barcodes",
            "first": "http://example.org/barcodes/page=1",
            "last": "http://example.org/barcodes/page=-1"
        }
    }
}
    EOD

  end
end
