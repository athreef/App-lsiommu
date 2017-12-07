package App::lsiommu;
# ABSTRACT: Display IOMMU groups as a tree
# VERSION
1;

=pod

=encoding utf8

=head1 NAME

lsiommu - Display IOMMU groups as a tree

=head1 SYNOPSIS

    $ lsiommu
    IOMMU
    ├── 0
    │   └── 00:01.0 Host bridge [0600]: Advanced Micro Devices, Inc. [AMD] Family 17h (Models 00h-0fh) PCIe Dummy Host Bridge [1022:1452]
    ├── 1
    │   ├── 00:07.0 Host bridge [0600]: Advanced Micro Devices, Inc. [AMD] Family 17h (Models 00h-0fh) PCIe Dummy Host Bridge [1022:1452]
    │   ├── 00:07.1 PCI bridge [0604]: Advanced Micro Devices, Inc. [AMD] Family 17h (Models 00h-0fh) Internal PCIe GPP Bridge 0 to Bus B [1022:1454]
    │   ├── 2a:00.0 Non-Essential Instrumentation [1300]: Advanced Micro Devices, Inc. [AMD] Device [1022:145a]
    │   ├── 2a:00.2 Encryption controller [1080]: Advanced Micro Devices, Inc. [AMD] Family 17h (Models 00h-0fh) Platform Security Processor [1022:1456]
    │   └── 2a:00.3 USB controller [0c03]: Advanced Micro Devices, Inc. [AMD] Family 17h (Models 00h-0fh) USB 3.0 Host Controller [1022:145c]
    <and so on>

=head1 INSTALLATION

    $ cpan App::lsiommu

=head1 DESCRIPTION

L<This script|http://github.com/a3f/.dotfiles/blob/master/bin/lsiommu> packaged as CPAN module.
Isolation/pass-through of devices via IOMMU is only possible in groups.
This script reads the groups out the Linux SysFS and displays them as a tree.
If C<lspci(1)> is available, it's used to display full device information.

=head1 GIT REPOSITORY

L<http://github.com/athreef/App-lsiommu>

=head1 SEE ALSO

L<http://github.com/a3f/.dotfiles>

=head1 AUTHOR

Ahmad Fatoum C<< <athreef@cpan.org> >>, L<http://a3f.at>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2017 Ahmad Fatoum

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
