access(all) contract Contador {

    access(all) var cuenta: Int

    // Evento emitido cuando la cuenta ha sido incrementada
    access(all) event CuentaIncrementada(nuevaCuenta: Int)

    // Evento emitido cuando la cuenta ha sido redujida
    access(all) event CuentaRedujida(nuevaCuenta: Int)

    init() {
        self.cuenta = 0
    }

    // Función pública para incrementar la cuenta
    access(all) fun incrementar() {
        self.cuenta = self.cuenta + 1
        emit CuentaIncrementada(nuevaCuenta: self.cuenta)
    }

    // Función pública para reducir la cuenta
    access(all) fun reducir() {
        self.cuenta = self.cuenta - 1
        emit CuentaRedujida(nuevaCuenta: self.cuenta)
    }

    // Función pública para obtener la cuenta actual
    view access(all) fun cuentaActual(): Int {
        return self.cuenta
    }
}   