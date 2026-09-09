import pepe.*
object ernesto {
            var tipoBono = ""
            var trabajaDe  = ""
            const diasAusentados = 0
            var sueldoNeto = 0
            method trabajaDe(trabajo) {
                trabajaDe = trabajo
                sueldoNeto = trabajo.neto()
            }
            method bonoPorPresentismo(tipoDeBono)
            {
                tipoBono = tipoDeBono
                tipoDeBono.bono(diasAusentados, sueldoNeto)
            }
            method trabajoAMedioTiempo() {
                sueldoNeto = medioTiempo.categoriaBase(trabajaDe)
            }
            method sueldoFinal() {
                return sueldoNeto + tipoBono.bonoPresentismo()
            }
}