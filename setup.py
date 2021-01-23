from distutils.core import setup
from distutils.extension import Extension
from Cython.Build import cythonize


ext = Extension(name='src.prime', sources=['src/prime.pyx'])
setup(ext_modules=cythonize(ext))
