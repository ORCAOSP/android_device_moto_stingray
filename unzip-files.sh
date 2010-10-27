#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/common/generate-blob-scripts.sh - DO NOT EDIT

DEVICE=stingray
MANUFACTURER=moto

mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/bin/brcm_guci_drv -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/bin/bypassfactory -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/bin/ftmipcd -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/bin/location -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/bin/savebpver -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/bin/tcmd -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/etc/gps.conf -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/etc/gpsconfig.xml -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/etc/location.cfg -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/etc/security/suplcerts.bks -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/hw/gps.stingray.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libcamera.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libnvodm_imager.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libnvodm_query.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libnvomxilclient.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libnvos.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libnvrm.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libnvrm_graphics.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libstagefrighthw.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/device-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/__MANUFACTURER__/__DEVICE__/unzip-files.sh - DO NOT EDIT

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES := \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libcamera.so:obj/lib/libcamera.so

# All the blobs necessary for stingray
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/brcm_guci_drv:system/bin/brcm_guci_drv \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bypassfactory:system/bin/bypassfactory \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/ftmipcd:system/bin/ftmipcd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/location:system/bin/location \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/savebpver:system/bin/savebpver \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/tcmd:system/bin/tcmd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/gps.conf:system/etc/gps.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/gpsconfig.xml:system/etc/gpsconfig.xml \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/location.cfg:system/etc/location.cfg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/suplcerts.bks:system/etc/security/suplcerts.bks \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/gps.stingray.so:system/lib/hw/gps.stingray.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libcamera.so:system/lib/libcamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libnvodm_imager.so:system/lib/libnvodm_imager.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libnvodm_query.so:system/lib/libnvodm_query.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libnvomxilclient.so:system/lib/libnvomxilclient.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libnvos.so:system/lib/libnvos.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libnvrm.so:system/lib/libnvrm.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libnvrm_graphics.so:system/lib/libnvrm_graphics.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libstagefrighthw.so:system/lib/libstagefrighthw.so
EOF

./setup-makefiles.sh