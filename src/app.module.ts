import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ConfigModule } from '@nestjs/config';
import { CountryModule } from './country/country.module';
import { KpiModule } from './kpi/kpi.module';
import { KpiValuesModule } from './kpi_values/kpi_values.module';

@Module({
  imports: [
    ConfigModule.forRoot({
      isGlobal: true,
    }),
    TypeOrmModule.forRoot({
      type: 'postgres',
      host: process.env.DB_HOST,
      port: parseInt(process.env.DB_PORT),
      username: process.env.POSTGRES_USER,
      password: process.env.POSTGRES_PASSWORD,
      database: process.env.POSTGRES_DB,
      entities: [],
      synchronize: true,
    }),
    CountryModule,
    KpiModule,
    KpiValuesModule,
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
