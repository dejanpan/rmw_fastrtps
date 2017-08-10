# Copyright 2017 Open Source Robotics Foundation, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# Get the output filter for the FastRTPS RMW package.
#
# :param output_filter: the filter that will be used to identify console
#   output generated by FastRTPS. This is provided as a single string with each
#   line of the string containing a filter that will be checked indepdently.
# :type output_filter: string
#
# @public
#
macro(get_rmw_fastrtps_output_filter output_filter)
  if(NOT "${ARGN}" STREQUAL "")
    message(FATAL_ERROR "get_rmw_fastrtps_output_filter() called with "
      "unused arguments: ${ARGN}")
  endif()

  set(${output_filter} ".*Reader .* cannot match writer .*$\n.*Writer .* cannot match reader .*$")
endmacro()