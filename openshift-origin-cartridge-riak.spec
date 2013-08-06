%global cartridgedir %{_libexecdir}/openshift/cartridges/riak

Summary:        RIAK cartridge
Name:           openshift-origin-cartridge-riak
Version:        0.1
Release:        1%{?dist}
Group:          Network/Daemons
License:        ASL 2.0
URL:            https://www.openshift.com
Source0:        http://lsm5.fedorapeople.org/%{name}/%{name}-%{version}.tar.gz
Requires:       rubygem(openshift-origin-node)
Requires:       openshift-origin-node-util
Requires:       erlang
Requires:       riak
BuildArch:      noarch

%description
RIAK cartridge for openshift. (Cartridge Format V2)

%prep
%setup -q

%build
%__rm %{name}.spec

%install
%__mkdir -p %{buildroot}%{cartridgedir}
%__cp -r * %{buildroot}%{cartridgedir}

%files
%dir %{cartridgedir}
%attr(0755,-,-) %{cartridgedir}/bin/
%attr(0755,-,-) %{cartridgedir}/hooks/
%{cartridgedir}
%doc %{cartridgedir}/README.md
%doc %{cartridgedir}/COPYRIGHT
%doc %{cartridgedir}/LICENSE

%changelog
* Tue Aug 06 2013 Lokesh Mandvekar <lsm5@redhat.com> 0.1-1
- version bump

* Mon Aug 05 2013 Lokesh Mandvekar <lsm5@redhat.com> 0.0.1-1
- new package built with tito
