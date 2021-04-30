#! /bin/sh

OUT_DIR="./output-vagrant"
LOCAL=""

while :; do
	case "${1-}" in
		-h | --help) echo "Usage: release.sh [-h] [-l]" ;;
		-l ) LOCAL='yes' ;;
		-?*) die "Unknown option: $1" ;;
		*) break ;;
	esac
	shift
done

[ -d "$OUT_DIR" ] && rm -vfr "$OUT_DIR"

if [ "$LOCAL" = 'yes' ]; then
	echo '[-] Building box locally'
	packer build config_local.json
else
	echo '[-] Building box'
	packer build -var-file=private_vars.json config.json
	# clean up
	rm -vfr "$OUT_DIR"
fi

echo '[+] All done!'
