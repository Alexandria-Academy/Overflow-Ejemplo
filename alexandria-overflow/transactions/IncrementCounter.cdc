import Contador from "../contracts/Contador.cdc"

transaction {

    prepare(usuario: &Account) {
        // En esa fase se autiriza la transacción.
    }

    execute {
        // Incrementa el contador
        Contador.incrementar()

        // Obten la cuenta actual y logeala 
        let nuevaCuenta = Contador.cuentaActual()
        log("Nueva cuenta despúes del incremento: ".concat(nuevaCuenta.toString()))
    }
}