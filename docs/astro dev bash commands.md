# astro dev bash

## Test the task
### upload_csv_to_gcs 
```bash airflow tasks test retail upload_csv_to_gcs 2023-01-01```

### check_load 
```bash airflow tasks test retail check_load 2023-01-01```

### transform.dim_customer.dim_customer_run 
```bash airflow tasks test retail transform.dim_customer.dim_customer_run 2023-01-01```

### transform.dim_customer.dim_customer_test
```bash airflow tasks test retail transform.dim_customer.dim_customer_test 2023-01-01```

## Test the connection
```bash soda test-connection -d retail -c include/soda/configuration.yml```

## Run the quality check
```bash soda scan -d retail -c include/soda/configuration.yml include/soda/checks/sources/raw_invoices.yml```

## List tasks 
```bash airflow tasks list retail```

##  Run the models
```bash source /usr/local/airflow/dbt_venv/bin/activate
cd include/dbt 
dbt deps
dbt run --profiles-dir /usr/local/airflow/include/dbt/```

```bash 
cd include/dbt
source dbt_venv/bin/activate
cd include/dbt 
dbt run --select path:models/report --profiles-dir /usr/local/airflow/include/dbt/```

```bash 
cd /usr/local/airflow
source /usr/local/airflow/soda_venv/bin/activate
soda scan -d retail -c include/soda/configuration.yml include/soda/checks/report/*```