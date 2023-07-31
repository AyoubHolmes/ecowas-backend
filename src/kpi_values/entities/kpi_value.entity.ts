import { Country } from 'src/country/entities/country.entity';
import { Kpi } from 'src/kpi/entities/kpi.entity';
import { Column, Entity, ManyToOne, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class KpiValue {
  @PrimaryGeneratedColumn()
  id: number;
  @Column({ type: 'float' })
  ranking: number;
  @Column({ type: 'float' })
  baseline: number;
  @Column({ type: 'float' })
  latestValue: number;
  @Column({ type: 'float' })
  targetLatestValue: number;
  @Column({ type: 'float' })
  target2030: number;
  @Column({ type: 'float' })
  progressMade: number;
  @Column({ type: 'float' })
  distanceToTarget: number;
  @Column({ type: 'float' })
  directionGoodPerformance: number;
  @ManyToOne(() => Kpi, (kpi) => kpi.id, {
    nullable: false,
    onDelete: 'CASCADE',
    onUpdate: 'CASCADE',
  })
  kpi: Kpi;
  @ManyToOne(() => Country, (country) => country.id, { nullable: false })
  country: Country;
}
