from setuptools import setup, find_packages

setup(
    name='apiverve_airportcodeconverter',
    version='1.2.3',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Airport Code Converter is an IATA code API that converts between 3-letter IATA and 4-letter ICAO airport codes. Submit either identifier to receive the matching code, official airport name, city, state, and country code.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/airportcodeconverter?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
