#  Copyright 2022 Ryan Svihla
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
class  Ddc < Formula

  desc "Collects logs, configuration and diagnostics from Kubernetes and On-Prem deployments of Dremio"
  homepage "https://github.com/rsvihladremio/dremio-diagnostic-collector"
  url "https://github.com/rsvihladremio/dremio-diagnostic-collector/archive/v0.1.1.tar.gz"
  sha256 "9fd552f4670bd6a87f5320c10cb4612f1e0e9f1e398c06a3f564851fe9d8a497"
  license "Apache-2.0"
  depends_on "go@1.18"
  def install
    system "go build -ldflags '-X github.com/rsvihladremio/dremio-diagnostic-collector/cmd.GitSha=8dc9b85 -X github.com/rsvihladremio/dremio-diagnostic-collector/cmd.Version=v0.1.1' -o ./bin/ddc"
    bin.install "./bin/ddc" => "ddc"
  end
  test do
  end
end
