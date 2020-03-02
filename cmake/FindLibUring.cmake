# Copyright (c) Facebook, Inc. and its affiliates.
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

find_path(LIBURING_INCLUDE_DIR NAMES liburing/io_uring.h)
mark_as_advanced(LIBURING_INCLUDE_DIR)

#find_library(LIBURING_LIBRARY NAMES uring)
#mark_as_advanced(LIBURING_LIBRARY)

include(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(
        LIBURING
        REQUIRED_VARS LIBURING_INCLUDE_DIR)

if(LIBURING_FOUND)
  #set(LIBURING_LIBRARIES ${LIBURING_LIBRARY})
  set(LIBURING_INCLUDE_DIRS ${LIBURING_INCLUDE_DIR})
endif()
