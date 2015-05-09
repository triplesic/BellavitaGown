UPDATE product_dtl pt
JOIN product p
   ON p.product_id = pt.product_id
JOIN catalog cl
   ON cl.catalog_id = p.catalog_id
JOIN  colors c
  ON pt.color_id = c.color_id
JOIN size s
  ON pt.size_id = s.size_id
SET pt.detail_slug = concat(cl.catalog_name,'-', pt.detail,'-', s.size_nm,'-', c.color_nm_th)
WHERE 1=1;