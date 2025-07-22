function extlink
  set base_url $argv[1]
  wget -q -O - $base_url \
  | grep -oP 'href="\K[^"]+\.mkv' \
  | while read -l href
      python3 -c "from urllib.parse import urljoin; print(urljoin('$base_url', '$href'))"
    end \
  | sort -u
end


# ------------------------------------------- bash version ---
# extlink() {
#   base_url=$1
#   wget -q -O - "$base_url" \            # Download HTML content quietly, output to stdout
#   | grep -oP 'href="\K[^"]+\.mkv' \    # Extract .mkv href values from the HTML
#   | sed "s|^|$base_url|"                # Prepend base URL to get full download links
# }

