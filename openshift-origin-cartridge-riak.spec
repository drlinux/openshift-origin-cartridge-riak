%global cartridgedir %{_libexecdir}/openshift/cartridges/riak

Summary:        RIAK cartridge
Name:           openshift-origin-cartridge-riak
Version:        0.8.1
Release:        1%{?dist}
Group:          Development/Languages
License:        ASL 2.0
URL:            https://www.openshift.com
Source0:        http://mirror.openshift.com/pub/openshift-origin/source/%{name}/%{name}-%{version}.tar.gz
Requires:       rubygem(openshift-origin-node)
Requires:       openshift-origin-node-util
Requires:       erlang
Requires:       riak

Obsoletes:      openshift-origin-cartridge-riak-0.1

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
* Mon Aug 05 2013 Lokesh Mandvekar <lsm5@redhat.com> 0.8.1-1
- new package built with tito

* Mon Aug 05 2013 Lokesh Mandvekar <lsm5@redhat.com> 0.7.5-1
- Initial cartridge template