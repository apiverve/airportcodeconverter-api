from setuptools import setup, find_packages

setup(
    name='apiverve_airportcodeconverter',
    version='1.1.14',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Airport Code Converter is a simple tool for converting between IATA (3-letter) and ICAO (4-letter) airport codes. Submit either format and get the corresponding code back.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/airportcodeconverter?utm_source=pypi&utm_medium=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
