INSERT INTO
  zsm_data.product_group(pg_name, pg_department)
VALUES
  ('Evil Currency', 'E-Corp');

INSERT INTO
  zsm_data.product(p_product_group_id, p_name, p_delivery_team)
VALUES
  ((select pg_id from zsm_data.product_group where pg_name='Evil Currency'), 'E-Coin', 'Dark Army');

INSERT INTO
  zsm_data.service_level_objective(slo_product_id, slo_service_level_indicator, slo_target_to, slo_target_unit)
VALUES
  ((select p_id from zsm_data.product where p_name='E-Coin'), 'latency.p95', '200', 'ms'),
  ((select p_id from zsm_data.product where p_name='E-Coin'), 'latency.p99', '1000', 'ms');
