CREATE OR REPLACE FUNCTION add_car(
    _car_id INTEGER,
    _vin VARCHAR,
    _make VARCHAR,
    _model VARCHAR,
    _price NUMERIC
)
RETURNS void
AS
$$
BEGIN

INSERT INTO car(car_id, vin, make, model, price)
VALUES(_car_id, _vin, _make, _model, _price);

END
$$
LANGUAGE plpgsql