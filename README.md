# Ejemplos usando el lenguaje Swift

## Instalación:

Para poder ejecutar código con el lenguaje Swift, se debe seguir los siguientes pasos:

```shell
## Ubuntu:
sudo apt install clang libicu-dev libpython2.7-dev libtinfo5 libncurses5 libpython2.7 libz3-dev

## Cambiar la versión del paquete por el mas actual
wget https://download.swift.org/swift-5.6.2-release/ubuntu2004/swift-5.6.2-RELEASE/swift-5.6.2-RELEASE-ubuntu20.04.tar.gz

tar xzf swift-5.6.2-RELEASE-ubuntu20.04.tar.gz

sudo mv swift-5.6.2-RELEASE-ubuntu20.04 /usr/share/swift

echo "export PATH=/usr/share/swift/usr/bin:$PATH" >> ~/.bashrc

source ~/.bashrc

## Probar si esta instalado
swift -version

## Ejecutar por línea de comandos y verificar si está correctamente instalado:
swift


```



**Fuente:**

[Swift, install this programming language in Ubuntu 20.04 | Ubunlog](https://ubunlog.com/en/swift-installs-this-programming-language-in-ubuntu-20-04/)

https://www.swift.org/download/
