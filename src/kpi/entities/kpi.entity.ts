import {
  Column,
  Entity,
  JoinColumn,
  ManyToOne,
  OneToMany,
  PrimaryColumn,
} from 'typeorm';

@Entity()
export class Kpi {
  @PrimaryColumn()
  id: number;
  @Column()
  label: string;
  @Column({ nullable: true, name: 'kpi_description' })
  description: string;
  @ManyToOne(() => Kpi, (kpi) => kpi.childs, { nullable: true })
  @JoinColumn({ name: 'parent_id' })
  parent: Kpi;
  @OneToMany(() => Kpi, (kpi) => kpi.parent)
  childs: Kpi[];
}
