from glob import glob

from setuptools import find_packages, setup

package_name = "my_package"

setup(
    name=package_name,
    version="0.0.0",
    packages=find_packages(exclude=["test"]),
    data_files=[
        ("share/ament_index/resource_index/packages", ["resource/" + package_name]),
        ("share/" + package_name, ["package.xml"]),
        ("share/" + package_name + "/launch", glob("launch/*.py")),
    ],
    install_requires=["setuptools"],
    zip_safe=True,
    maintainer="kaweees",
    maintainer_email="miguel.villafloran@gmail.com",
    description="TODO: Package description",
    license="GPLv3",
    tests_require=["pytest"],
    entry_points={
        "console_scripts": [
            "talker = src.talker:main",
            "listener = src.listener:main",
            "squared = src.squared:main",
        ],
    },
)
