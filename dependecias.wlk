class Dependencia {
    const flota = []
    var property empleados = 0

    method agregarAFlota(rodado) {flota.add(rodado)}
    method quitarAFlota(rodado) {flota.remove(rodado)}
    method pesoTotalFlota() = flota.sum({r => r.peso()})
    method tieneAlMenos3Rodados() = flota.size() >= 3
    method todosVanAlMenosA100() = flota.all({r => r.velocidad() >= 100})
    method estaBienEquipada() = self.tieneAlMenos3Rodados() && self.todosVanAlMenosA100()
    method rodadosDeColor(color) = flota.filter({r => r.color() == color})
    method capacidadTotalEnColor(color) = self.rodadosDeColor(color).sum({r => r.capacidad()})
    method rodadoMasRapido() = flota.max({r => r.velocidad()})
    method colorDelRodadoMasRapido() = self.rodadoMasRapido().color()
    method capacidadTotal() = flota.sum({r => r.capacidad()})
    method capacidadFaltante() = (empleados - self.capacidadTotal()).max(0)
    method esGrande() = empleados > 39 && flota.size() > 4
}