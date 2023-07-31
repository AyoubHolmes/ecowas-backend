"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
exports.__esModule = true;
exports.Kpi = void 0;
var typeorm_1 = require("typeorm");
var Kpi = /** @class */ (function () {
    function Kpi() {
    }
    Kpi_1 = Kpi;
    var Kpi_1;
    __decorate([
        typeorm_1.PrimaryColumn()
    ], Kpi.prototype, "id");
    __decorate([
        typeorm_1.Column()
    ], Kpi.prototype, "label");
    __decorate([
        typeorm_1.ManyToOne(function () { return Kpi_1; }, function (kpi) { return kpi.childs; }, { nullable: true })
    ], Kpi.prototype, "parent");
    __decorate([
        typeorm_1.OneToMany(function () { return Kpi_1; }, function (kpi) { return kpi.parent; })
    ], Kpi.prototype, "childs");
    Kpi = Kpi_1 = __decorate([
        typeorm_1.Entity()
    ], Kpi);
    return Kpi;
}());
exports.Kpi = Kpi;
