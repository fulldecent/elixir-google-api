# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Testing.V1.Model.TestSpecification do
  @moduledoc """
  A description of how to run the test.

  ## Attributes

  - androidInstrumentationTest (AndroidInstrumentationTest): An Android instrumentation test. Defaults to: `null`.
  - androidRoboTest (AndroidRoboTest): An Android robo test. Defaults to: `null`.
  - androidTestLoop (AndroidTestLoop): An Android Application with a Test Loop. Defaults to: `null`.
  - disablePerformanceMetrics (boolean()): Disables performance metrics recording. May reduce test latency. Defaults to: `null`.
  - disableVideoRecording (boolean()): Disables video recording. May reduce test latency. Defaults to: `null`.
  - iosTestSetup (IosTestSetup): Test setup requirements for iOS. Defaults to: `null`.
  - iosXcTest (IosXcTest): An iOS XCTest, via an .xctestrun file. Defaults to: `null`.
  - testSetup (TestSetup): Test setup requirements for Android e.g. files to install, bootstrap scripts. Defaults to: `null`.
  - testTimeout (String.t): Max time a test execution is allowed to run before it is automatically cancelled. The default value is 5 min. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :androidInstrumentationTest =>
            GoogleApi.Testing.V1.Model.AndroidInstrumentationTest.t(),
          :androidRoboTest => GoogleApi.Testing.V1.Model.AndroidRoboTest.t(),
          :androidTestLoop => GoogleApi.Testing.V1.Model.AndroidTestLoop.t(),
          :disablePerformanceMetrics => any(),
          :disableVideoRecording => any(),
          :iosTestSetup => GoogleApi.Testing.V1.Model.IosTestSetup.t(),
          :iosXcTest => GoogleApi.Testing.V1.Model.IosXcTest.t(),
          :testSetup => GoogleApi.Testing.V1.Model.TestSetup.t(),
          :testTimeout => any()
        }

  field(:androidInstrumentationTest, as: GoogleApi.Testing.V1.Model.AndroidInstrumentationTest)
  field(:androidRoboTest, as: GoogleApi.Testing.V1.Model.AndroidRoboTest)
  field(:androidTestLoop, as: GoogleApi.Testing.V1.Model.AndroidTestLoop)
  field(:disablePerformanceMetrics)
  field(:disableVideoRecording)
  field(:iosTestSetup, as: GoogleApi.Testing.V1.Model.IosTestSetup)
  field(:iosXcTest, as: GoogleApi.Testing.V1.Model.IosXcTest)
  field(:testSetup, as: GoogleApi.Testing.V1.Model.TestSetup)
  field(:testTimeout)
end

defimpl Poison.Decoder, for: GoogleApi.Testing.V1.Model.TestSpecification do
  def decode(value, options) do
    GoogleApi.Testing.V1.Model.TestSpecification.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Testing.V1.Model.TestSpecification do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
