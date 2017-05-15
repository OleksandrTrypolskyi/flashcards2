require 'rails_helper'
require 'spec_helper'

describe Dashboard::CardsController do
  describe 'search_flickr' do

    let!(:list_of_photos) do
          { "photos": { "page": 1, "pages": 5, "perpage": 100, "total": "500",
                            "photo": [
                { "id": "34508334982", "owner": "101034127@N08", "secret": "98c5279813", "server": "4157", "farm": 5, "title": "Abandoned cars", "ispublic": 1, "isfriend": 0, "isfamily": 0 },
                { "id": "34539629651", "owner": "148075792@N05", "secret": "6c53b92f87", "server": "4160", "farm": 5, "title": "_DSC7207", "ispublic": 1, "isfriend": 0, "isfamily": 0 },
                { "id": "34508085432", "owner": "149575032@N02", "secret": "8c32b3e780", "server": "4176", "farm": 5, "title": "DSCF3428.jpg", "ispublic": 1, "isfriend": 0, "isfamily": 0 },
                { "id": "34629122786", "owner": "48093195@N03", "secret": "a749b75784", "server": "4181", "farm": 5, "title": "D5000-0731-400", "ispublic": 1, "isfriend": 0, "isfamily": 0 },
                { "id": "34284842420", "owner": "51737026@N07", "secret": "ba6af17445", "server": "4160", "farm": 5, "title": "Victoria Park racecourse Rose Park, Dulwich suburbs on the right", "ispublic": 1, "isfriend": 0, "isfamily": 0 },
                { "id": "33827340284", "owner": "48093195@N03", "secret": "59d2c2d611", "server": "4181", "farm": 5, "title": "D5000-0560-400", "ispublic": 1, "isfriend": 0, "isfamily": 0 },
                { "id": "34539372371", "owner": "66887658@N05", "secret": "411953bcb8", "server": "4181", "farm": 5, "title": "Fiat 1100, 1962", "ispublic": 1, "isfriend": 0, "isfamily": 0 },
                { "id": "34539419591", "owner": "105122745@N06", "secret": "82c900f1cc", "server": "4179", "farm": 5, "title": "DJI Selfie", "ispublic": 1, "isfriend": 0, "isfamily": 0 },
                { "id": "33827222254", "owner": "63840098@N06", "secret": "835b794736", "server": "4178", "farm": 5, "title": "91-06-XM AUSTIN MINI 850 1973", "ispublic": 1, "isfriend": 0, "isfamily": 0 },
          ] }, "stat": "ok" }.to_json
    end

    it 'flickr_response' do
      stub_request(:post, 'https://api.flickr.com/services/rest/').
          with(body: { format: 'json', method: 'flickr.photos.search', nojsoncallback: '1', per_page: '9', text: 'car' }).
          and_return(body: list_of_photos)
    end
  end
end