import Contador from "../contracts/Contador.cdc"

access(all)
fun main(): Int {
  return Contador.cuentaActual()
}
