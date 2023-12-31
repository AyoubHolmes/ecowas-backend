"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
exports.__esModule = true;
exports.AppModule = void 0;
var common_1 = require("@nestjs/common");
var app_controller_1 = require("./app.controller");
var app_service_1 = require("./app.service");
var typeorm_1 = require("@nestjs/typeorm");
var config_1 = require("@nestjs/config");
var country_module_1 = require("./country/country.module");
var kpi_module_1 = require("./kpi/kpi.module");
var kpi_values_module_1 = require("./kpi_values/kpi_values.module");
var country_entity_1 = require("./country/entities/country.entity");
var kpi_entity_1 = require("./kpi/entities/kpi.entity");
var kpi_value_entity_1 = require("./kpi_values/entities/kpi_value.entity");
var AppModule = /** @class */ (function () {
    function AppModule() {
    }
    AppModule = __decorate([
        common_1.Module({
            imports: [
                config_1.ConfigModule.forRoot({
                    isGlobal: true
                }),
                typeorm_1.TypeOrmModule.forRoot({
                    type: 'postgres',
                    host: process.env.DB_HOST,
                    port: parseInt(process.env.DB_PORT),
                    username: process.env.POSTGRES_USER,
                    password: process.env.POSTGRES_PASSWORD,
                    database: process.env.POSTGRES_DB,
                    entities: [country_entity_1.Country, kpi_entity_1.Kpi, kpi_value_entity_1.KpiValue],
                    migrations: ['../migrations'],
                    synchronize: true
                }),
                country_module_1.CountryModule,
                kpi_module_1.KpiModule,
                kpi_values_module_1.KpiValuesModule,
            ],
            controllers: [app_controller_1.AppController],
            providers: [app_service_1.AppService]
        })
    ], AppModule);
    return AppModule;
}());
exports.AppModule = AppModule;
