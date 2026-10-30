Name:           nouveau-boost
Version:        0.1.0
Release:        1%{?dist}
Summary:        One-Click Video Freeze Fixer and Tuner for Legacy NVIDIA GPUs on Linux
License:        GPL-2.0-only
URL:            https://github.com/Munique-Feitoza/nouveau-boost
Source0:        nouveau-boost_0.1.0.orig.tar.gz
ExclusiveArch:  x86_64
%global debug_package %{nil}

%description
One-click video freeze fixer, plain-English health doctor, Falcon video microcode
verifier, and P-State performance tuner for legacy NVIDIA GPUs (Tesla, Fermi,
Kepler, Maxwell, and Pascal) running on the mainline Linux Nouveau DRM driver.

%prep
%setup -q -n nouveau-boost-0.1.0

%build
# Pre-built release binary included in source tarball

%install
install -Dm755 nouveau-boost %{buildroot}%{_bindir}/nouveau-boost
install -Dm644 LICENSE %{buildroot}%{_datadir}/licenses/%{name}/LICENSE
install -Dm644 README.md %{buildroot}%{_datadir}/doc/%{name}/README.md
install -Dm644 nouveau-boost.desktop %{buildroot}%{_datadir}/applications/nouveau-boost.desktop

%files
%{_bindir}/nouveau-boost
%dir %{_datadir}/licenses/%{name}
%{_datadir}/licenses/%{name}/LICENSE
%dir %{_datadir}/doc/%{name}
%{_datadir}/doc/%{name}/README.md
%{_datadir}/applications/nouveau-boost.desktop

%changelog
* Fri Oct 30 2026 Munique Feitoza <Munique-Feitoza@users.noreply.github.com> - 0.1.0-1
- Initial release of nouveau-boost v0.1.0
