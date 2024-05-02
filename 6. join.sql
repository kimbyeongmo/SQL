
-- ����� first_name, employee_id, department_id, dept_name
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




-- 1. employees���̺�� departments���̺��� inner join�Ͽ�
--    ���, first_name, last_name, department_id, department_name�� ��ȸ�ϼ���.
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


-- 2. employees���̺�� departments���̺��� natural join�Ͽ�
--    ���, first_name, last_name, department_id, department_name�� ��ȸ�ϼ���.
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


-- 3. employees���̺�� departments���̺��� using���� ����Ͽ�
--    ���, first_name, last_name, department_id, department_name�� ��ȸ�ϼ���.
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

-- 4. employees���̺�� departments���̺�� locations ���̺��� 
--    join�Ͽ� employee_id, first_name, department_name, city�� ��ȸ�ϼ���
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

-- 5. employees ���̺�� jobs ���̺��� INNER JOIN�Ͽ� 
--    ����� first_name, last_name, job_title�� ��ȸ�ϼ���.
SELECT
    first_name,
    last_name,
    job_title
FROM employees E
JOIN jobs J
USING (job_id)
ORDER BY job_title
;

-- 6. employees ���̺�� departments ���̺��� INNER JOIN�Ͽ� 
--    �μ���� �� �μ��� �ִ� �޿����� ��ȸ�ϼ���.
SELECT
 department_name,
 max(salary)
FROM employees E
JOIN departments D
ON E.department_id=D.department_id
GROUP BY department_name
order by MAX(SALARY)
;

-- 7. employees ���̺�� jobs ���̺��� INNER JOIN�Ͽ� 
--    ������ ��� �޿��� ���� Ÿ��Ʋ�� ��ȸ�ϼ���
SELECT
    job_title,
    AVG(salary)
FROM employees E
JOIN jobs J
on e.job_id=j.job_id
group by job_title
ORDER BY AVG(salary)
;




