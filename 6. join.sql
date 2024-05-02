
-- 사원의 first_name, employee_id, department_id, dept_name
SELECT
    E.employee_id,
    E.first_name,
    E.department_id,
    D.department_name
FROM employees E
JOIN departments D
ON E.department_id = D.department_id
;

SELECT
    E.employee_id,
    E.first_name,
    department_id,
    D.department_name
FROM employees E
JOIN departments D
USING (department_id)
;



SELECT
    E.employee_id,
    E.first_name,
    department_id,
    D.department_name
FROM employees E
NATURAL JOIN departments D
--ON E.department_id = D.department_id
;


SELECT
    E.employee_id,
    E.first_name,
    department_id,
    D.department_name
FROM employees E
JOIN departments D
USING (department_id, manager_id)
ORDER BY E.employee_id
;




-- 1. employees테이블과 departments테이블을 inner join하여
--    사번, first_name, last_name, department_id, department_name을 조회하세요.
SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    e.department_id,
    d.department_name
FROM employees E
JOIN departments D
ON E.department_id=D.department_id
order by employee_id
;


-- 2. employees테이블과 departments테이블을 natural join하여
--    사번, first_name, last_name, department_id, department_name을 조회하세요.
SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    department_id,
    department_name
FROM employees E
NATURAL JOIN departments D
order by employee_id
;


-- 3. employees테이블과 departments테이블을 using절을 사용하여
--    사번, first_name, last_name, department_id, department_name을 조회하세요.
SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    department_id,
    department_name
FROM employees E
JOIN departments D
USING (department_id)
order by employee_id
;

-- 4. employees테이블과 departments테이블과 locations 테이블을 
--    join하여 employee_id, first_name, department_name, city를 조회하세요
SELECT
    e.employee_id,
    e.first_name,
    d.department_name,
    l.city
FROM employees E
JOIN departments D
ON E.department_id=D.department_id
JOIN locations L
ON D.location_id=L.location_id
order by employee_id
;

-- 5. employees 테이블과 jobs 테이블을 INNER JOIN하여 
--    사원의 first_name, last_name, job_title을 조회하세요.
SELECT
    first_name,
    last_name,
    job_title
FROM employees E
JOIN jobs J
USING (job_id)
ORDER BY job_title
;

-- 6. employees 테이블과 departments 테이블을 INNER JOIN하여 
--    부서명과 각 부서의 최대 급여값을 조회하세요.
SELECT
 department_name,
 max(salary)
FROM employees E
JOIN departments D
ON E.department_id=D.department_id
GROUP BY department_name
order by MAX(SALARY)
;

-- 7. employees 테이블과 jobs 테이블을 INNER JOIN하여 
--    직무별 평균 급여와 직무 타이틀을 조회하세요
SELECT
    job_title,
    AVG(salary)
FROM employees E
JOIN jobs J
on e.job_id=j.job_id
group by job_title
ORDER BY AVG(salary)
;




