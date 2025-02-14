load("//tools/workspace:pkg_config.bzl", "pkg_config_repository")

def libpng_repository(
        name,
        licenses = ["notice"],  # Libpng
        modname = "libpng",
        pkg_config_paths = [],
        homebrew_subdir = "opt/libpng/lib/pkgconfig",
        **kwargs):
    pkg_config_repository(
        name = name,
        licenses = licenses,
        modname = modname,
        pkg_config_paths = pkg_config_paths,
        extra_deprecation = "The @libpng external is deprecated in Drake's WORKSPACE and will be removed on or after 2024-02-01.",  # noqa
        **kwargs
    )
