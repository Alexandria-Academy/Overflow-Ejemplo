package main

import (
	"fmt"
	//if you imports this with .  you do not have to repeat overflow everywhere
	. "github.com/bjartek/overflow/v2"
	"github.com/fatih/color"
)

func main() {
	//start an in memory emulator by default
	o := Overflow(
		WithGlobalPrintOptions(),
	)
	fmt.Println("Probando Contrato")
	//
	///// Probando CADENCE en Overflow /////
	//
	color.Red("Debería de incrementar el Contador")
	// Incrementa el contador
	o.Tx("create_COA",
		WithSigner("bob"),
	)
}
