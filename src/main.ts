import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import { DocumentBuilder, SwaggerModule } from '@nestjs/swagger';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  const swaggerConfig = new DocumentBuilder()
    .setTitle('ECOWAS API documentation.')
    .setDescription('The official document of ECOWAS API')
    .setVersion('2.0')
    .build();
  const swaggerDocument = SwaggerModule.createDocument(app, swaggerConfig);
  SwaggerModule.setup('/swagger-docs', app, swaggerDocument);

  await app.listen(5000);
}
bootstrap();
