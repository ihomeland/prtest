from os import path
import setuptools

pwd = path.abspath(path.dirname(__file__))
readmefile = path.join(pwd, 'README.md')
with open(readmefile, encoding='utf-8') as f:
    readme = f.read()

setuptools.setup(
    name='vertx-eventbus-client',
    version='1.0.0',
    packages=['Vertx'],
    author='vertx-dev',
    author_email='vertx-dev@googlegroups.com',
    url='https://github.com/vert-x3/vertx-eventbus-bridge-clients/tree/master/python',
    license='Apache Software License 2.0',
    description='Vertx EventBus Client',
    long_description=readme,
    long_description_content_type='text/markdown'
)

