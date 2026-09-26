#!/usr/bin/env bash

echo "=== Запуск MikroTik RouterOS CHR под macOS для Ansible ==="

# Запускаем QEMU напрямую в сетевом стеке контейнера.
# hostfwd связывает порты контейнера с портами внутри MikroTik.
exec qemu-system-x86_64 \
   -nographic -serial mon:stdio \
   -vnc 0.0.0.0:0 \
   -m 256 \
   -smp 1 \
   -nic user,model=virtio-net-pci,hostfwd=tcp::22-:22,hostfwd=tcp::23-:23,hostfwd=tcp::8291-:8291,hostfwd=tcp::8728-:8728,hostfwd=tcp::8729-:8729 \
   "$@" \
   -drive file="/routeros/${ROUTEROS_IMAGE}",if=virtio,format=vdi