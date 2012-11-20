#-------------------------------------------------------------------------
# Copyright (c) Microsoft. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#--------------------------------------------------------------------------
require "integration/test_helper"
require "azure/storage/blob/blob_service"

describe Azure::Storage::Blob::BlobService do
  subject { Azure::Storage::Blob::BlobService.new }
  
  describe '#renew_lease' do
    let(:container_name) { ContainerNameHelper.name }
    let(:blob_name) { "blobname" }
    let(:length) { 1024 }
    before { 
      subject.create_container container_name
    }

    it 'should be possible to renew a lease' do
      subject.create_page_blob container_name, blob_name, length

      lease_id = subject.acquire_lease container_name, blob_name
      lease_id.wont_be_nil

      new_lease_id = subject.renew_lease container_name, blob_name, lease_id
      new_lease_id.wont_be_nil

      # renewing a lease returns the same lease id
      new_lease_id.must_equal lease_id
    end
  end
end
