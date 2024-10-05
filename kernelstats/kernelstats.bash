---
permalink: /cgi/kernelstats/index.bash
---

# These vars are set in _config.yml of the Jekyll project.
# Details: https://git.xw3.org/xw3/xw3/src/branch/main/_config.yml
R_6_11={{ site.r_6_11 }}
R_6_10={{ site.r_6_10 }}
R_6_9={{ site.r_6_9 }}
R_6_8={{ site.r_6_8 }}
R_6_6={{ site.r_6_6 }}
R_6_1={{ site.r_6_1 }}
R_5_15={{ site.r_5_15 }}
R_5_10={{ site.r_5_10 }}
R_5_4={{ site.r_5_4 }}
R_4_19={{ site.r_4_19 }}

# 6.11. series
for REALAESE in `seq 1 ${R_6_11}`; do
    if [ ! -f "{{ site.data_dir }}kernelstats/ChangeLog-6.11.${REALAESE}" ]; then
        wget -O "{{ site.data_dir }}kernelstats/ChangeLog-6.11.${REALAESE}" \
        "https://cdn.kernel.org/pub/linux/kernel/v6.x/ChangeLog-6.11.${REALAESE}"
    fi
done

# 6.10. series
for REALAESE in `seq 1 ${R_6_10}`; do
    if [ ! -f "{{ site.data_dir }}kernelstats/ChangeLog-6.10.${REALAESE}" ]; then
        wget -O "{{ site.data_dir }}kernelstats/ChangeLog-6.10.${REALAESE}" \
        "https://cdn.kernel.org/pub/linux/kernel/v6.x/ChangeLog-6.10.${REALAESE}"
    fi
done

# 6.9. series
for REALAESE in `seq 1 ${R_6_9}`; do
    if [ ! -f "{{ site.data_dir }}kernelstats/ChangeLog-6.9.${REALAESE}" ]; then
        wget -O "{{ site.data_dir }}kernelstats/ChangeLog-6.9.${REALAESE}" \
        "https://cdn.kernel.org/pub/linux/kernel/v6.x/ChangeLog-6.9.${REALAESE}"
    fi
done

# 6.8. series
for REALAESE in `seq 1 ${R_6_8}`; do
    if [ ! -f "{{ site.data_dir }}kernelstats/ChangeLog-6.8.${REALAESE}" ]; then
        wget -O "{{ site.data_dir }}kernelstats/ChangeLog-6.8.${REALAESE}" \
        "https://cdn.kernel.org/pub/linux/kernel/v6.x/ChangeLog-6.8.${REALAESE}"
    fi
done

# 6.6. series
for REALAESE in `seq 1 ${R_6_6}`; do
    if [ ! -f "{{ site.data_dir }}kernelstats/ChangeLog-6.6.${REALAESE}" ]; then
        wget -O "{{ site.data_dir }}kernelstats/ChangeLog-6.6.${REALAESE}" \
        "https://cdn.kernel.org/pub/linux/kernel/v6.x/ChangeLog-6.6.${REALAESE}"
    fi
done

# 6.1. series
for REALAESE in `seq 1 ${R_6_1}`; do
    if [ ! -f "{{ site.data_dir }}kernelstats/ChangeLog-6.1.${REALAESE}" ]; then
        wget -O "{{ site.data_dir }}kernelstats/ChangeLog-6.1.${REALAESE}" \
        "https://cdn.kernel.org/pub/linux/kernel/v6.x/ChangeLog-6.1.${REALAESE}"
    fi
done

# 5.15. series
for REALAESE in `seq 1 ${R_5_15}`; do
    if [ ! -f "{{ site.data_dir }}kernelstats/ChangeLog-5.15.${REALAESE}" ]; then
        wget -O "{{ site.data_dir }}kernelstats/ChangeLog-5.15.${REALAESE}" \
        "https://cdn.kernel.org/pub/linux/kernel/v5.x/ChangeLog-5.15.${REALAESE}"
    fi
done

# 5.10. series
for REALAESE in `seq 1 ${R_5_10}`; do
    if [ ! -f "{{ site.data_dir }}kernelstats/ChangeLog-5.10.${REALAESE}" ]; then
        wget -O "{{ site.data_dir }}kernelstats/ChangeLog-5.10.${REALAESE}" \
        "https://cdn.kernel.org/pub/linux/kernel/v5.x/ChangeLog-5.10.${REALAESE}"
    fi
done

# 5.4. series
for REALAESE in `seq 1 ${R_5_4}`; do
    if [ ! -f "{{ site.data_dir }}kernelstats/ChangeLog-5.4.${REALAESE}" ]; then
        wget -O "{{ site.data_dir }}kernelstats/ChangeLog-5.4.${REALAESE}" \
        "https://cdn.kernel.org/pub/linux/kernel/v5.x/ChangeLog-5.4.${REALAESE}"
    fi
done

# 4.19. series
for REALAESE in `seq 1 ${R_4_19}`; do
    if [ ! -f "{{ site.data_dir }}kernelstats/ChangeLog-4.19.${REALAESE}" ]; then
        wget -O "{{ site.data_dir }}kernelstats/ChangeLog-4.19.${REALAESE}" \
        "https://cdn.kernel.org/pub/linux/kernel/v4.x/ChangeLog-4.19.${REALAESE}"
    fi
done

echo "Content-type: text/plain; charset=utf-8"
echo ""

for VERSION in "6.11.${R_6_11}" "6.10.${R_6_10}" "6.9.${R_6_9}" "6.8.${R_6_8}" "6.6.${R_6_6}" "6.1.${R_6_1}" "5.15.${R_5_15}" "5.10.${R_5_10}" "5.4.${R_5_4}" "4.19.${R_4_19}"; do
    echo "<h2>Sum of all contributions from release $(echo ${VERSION} | cut -d "." -f1).$(echo ${VERSION} | cut -d "." -f2).1 to ${VERSION}</h2>"
    echo ""
    echo "<pre>"
    cat {{ site.data_dir }}kernelstats/ChangeLog-$(echo ${VERSION} | cut -d "." -f1).$(echo ${VERSION} | cut -d "." -f2).* | \
    # grep for all lines including the string "Author".
    grep 'Author' | \
    # Get the second field after the ":" delimiter.
    cut -d':' -f2 | \
    # Sort all lines.
    sort | \
    # Get uniq lines and prefix the count.
    uniq -c | \
    # Remove leading whitespaces and tabs.
    sed 's/^[ \t]*//' | \
    # Numerically sort the lines.
    sort -nr | \
    # Get the top 50 lines.
    head -n 50 | \
    # Replace "<" with "$lt;".
    sed 's/</\&lt;/g' | \
    # Replace ">" with "$gt;".
    sed 's/>/\&gt;/g'
    echo "</pre>"
    echo ""
done

