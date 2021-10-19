# lstopo
# Autogenerated from man page /usr/share/man/man1/lstopo.1.gz
complete -c lstopo -l of -l output-format -d 'Enforce the output in the given format.  See the OUTPUT FORMATS section below'
complete -c lstopo -s i -l input -d 'Read topology from XML file <file> (instead of discovering the topology on th…'
complete -c lstopo -l if -l input-format -d 'Enforce the input in the given format, among xml, fsroot, cpuid and synthetic'
complete -c lstopo -l export-xml-flags -d 'Enforce flags when exporting to the XML format'
complete -c lstopo -l export-synthetic-flags -d 'Enforce flags when exporting to the synthetic format'
complete -c lstopo -s v -l verbose -d 'Include additional detail'
complete -c lstopo -s s -l silent -d 'Reduce the amount of details to show'
complete -c lstopo -l distances -d 'Only display distance matrices'
complete -c lstopo -l distances-transform -d 'Try applying a transformation to distances structures before displaying them'
complete -c lstopo -l memattrs -d 'Only display memory attributes'
complete -c lstopo -l cpukinds -d 'Only display CPU kinds'
complete -c lstopo -s f -l force -d 'If the destination file already exists, overwrite it'
complete -c lstopo -s l -l logical -d 'Display hwloc logical indexes of all objects, with prefix "L#"'
complete -c lstopo -s p -l physical -d 'Display OS/physical indexes of all objects, with prefix "P#"'
complete -c lstopo -s c -l cpuset -d 'Display the cpuset of each object'
complete -c lstopo -s C -l cpuset-only -d 'Only display the cpuset of each object; do not display anything else about th…'
complete -c lstopo -l taskset -d 'Show CPU set strings in the format recognized by the taskset command-line pro…'
complete -c lstopo -l only -d 'Only show objects of the given type in the textual output'
complete -c lstopo -l filter -l filter -d 'Filter objects of type <type>, or of any type if <type> is "all"'
complete -c lstopo -l ignore -d 'This is the old way to specify --filter <type>:none'
complete -c lstopo -l no-smt -d 'Ignore PUs.  This is identical to --filter PU:none'
complete -c lstopo -l no-caches -d 'Do not show caches.  This is identical to --filter cache:none'
complete -c lstopo -l no-useless-caches -d 'This is identical to --filter cache:structure'
complete -c lstopo -l no-icaches -d 'This is identical to --filter icache:none'
complete -c lstopo -l disallowed -d 'Include objects disallowed by administrative limitations'
complete -c lstopo -l allow -d 'Include objects disallowed by administrative limitations (implies --disallowe…'
complete -c lstopo -l flags -d 'Enforce topology flags'
complete -c lstopo -l merge -d 'Do not show levels that do not have a hierarchical impact'
complete -c lstopo -l no-factorize -l no-factorize -d 'Never factorize identical objects in the graphical output'
complete -c lstopo -l factorize -l factorize -d 'Factorize identical children in the graphical output (enabled by default)'
complete -c lstopo -l no-collapse -d 'Do not collapse identical PCI devices'
complete -c lstopo -l no-cpukinds -d 'Do not show different kinds of CPUs in the graphical output'
complete -c lstopo -l restrict -d 'Restrict the topology to the given cpuset'
complete -c lstopo -l restrict-flags -d 'Enforce flags when restricting the topology'
complete -c lstopo -l no-io -d 'Do not show any I/O device or bridge.  This is identical to --filter io:none'
complete -c lstopo -l no-bridges -d 'Do not show any I/O bridge except hostbridges'
complete -c lstopo -l whole-io -d 'Show all I/O devices and bridges.  This is identical to --filter io:all'
complete -c lstopo -l thissystem -d 'Assume that the selected backend provides the topology for the system on whic…'
complete -c lstopo -l pid -d 'Detect topology as seen by process <pid>, i. e'
complete -c lstopo -l ps -l top -d 'Show existing processes as misc objects in the output'
complete -c lstopo -l children-order -d 'Change the order of the different kinds of children with respect to their par…'
complete -c lstopo -l fontsize -d 'Set the size of text font in the graphical output.   The default is 10'
complete -c lstopo -l gridsize -d 'Set the margin between elements in the graphical output.   The default is 7'
complete -c lstopo -l linespacing -d 'Set the spacing between lines of text in the graphical output'
complete -c lstopo -l thickness -d 'Set the thickness of lines and boxes in the graphical output'
complete -c lstopo -l horiz -l horiz -d 'Force a horizontal graphical layout instead of nearly 4/3 ratio in the graphi…'
complete -c lstopo -l vert -l vert -d 'Force a vertical graphical layout instead of nearly 4/3 ratio in the graphica…'
complete -c lstopo -l rect -l rect -d 'Force a rectangular graphical layout with nearly 4/3 ratio in the graphical o…'
complete -c lstopo -l no-text -l no-text -d 'Do not display any text in boxes in the graphical output'
complete -c lstopo -l text -l text -d 'Display text in boxes in the graphical output (default)'
complete -c lstopo -l no-index -l no-index -d 'Do not show object indexes in the graphical output'
complete -c lstopo -l index -l index -d 'Show object indexes in the graphical output (default)'
complete -c lstopo -l no-attrs -l no-attrs -d 'Do not show object attributes (such as memory size, cache size, PCI bus ID, P…'
complete -c lstopo -l attrs -l attrs -d 'Show object attributes (such as memory size, cache size, PCI bus ID, PCI link…'
complete -c lstopo -l no-legend -d 'Remove all text legend lines at the bottom of the graphical output'
complete -c lstopo -l no-default-legend -d 'Remove default text legend lines at the bottom of the graphical output'
complete -c lstopo -l append-legend -d 'Append the line of text to the bottom of the legend in the graphical output'
complete -c lstopo -l binding-color -d 'Do not colorize PUs and NUMA nodes according to the binding in the graphical …'
complete -c lstopo -l disallowed-color -d 'Do not colorize disallowed PUs and NUMA nodes in the graphical output'
complete -c lstopo -l top-color -d 'Do not colorize task objects in the graphical output when --top is given, or …'
complete -c lstopo -l version -d 'Report version and exit'
complete -c lstopo -s h -l help -d 'Display help message and exit.  DESCRIPTION'
complete -c lstopo -o '.<format>' -d 'If the entire filename is "-'

