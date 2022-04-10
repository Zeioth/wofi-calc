# Description: Generates a new aur release.

#-----------------------------------------------------------------------------
# TODO: On github/gitlab, create automation to create git version per tag
#       This is just in case an user tries to download an specific version.
#-----------------------------------------------------------------------------


# Generate the checksums automatically
sed -i "s/^sha256sums=.*/$(makepkg -g -f -p PKGBUILD)/" ./PKGBUILD

# Generate tag a new tag for the new version
git tag $(printf "v1.0.r%s" "$(git rev-list --count HEAD)")

# Generate pagkage metadata
makepkg --printsrcinfo > .SRCINFO

# Push it to AUR
git add PKGBUILD .SRCINFO
git commit -m "New version"
git push ssh://aur@aur.archlinux.org/wofi-calc.git master

# Bye
echo -e "\n-------------------------------------------------------------------"
echo -e "NEW VERSION GENERATED\n"
