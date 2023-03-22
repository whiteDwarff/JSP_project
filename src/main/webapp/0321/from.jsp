<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
</head>
<body>

<form action="action.jsp">
    <table>
        <tr>
            <td>아이디</td>
            <td><input name="id"></td>
        </tr>

        <tr>
            <td>비밀번호</td>
            <td><input type="password" name="password"></td>
        </tr>
        <tr>
            <td>성별</td>
            <td>
                <input type="radio" value="남" checked name="gender">남
                <input type="radio" value="여" name="gender">여
            </td>
        </tr>
        <tr>
            <td>가입경로</td>
            <td>
                <select name="join">
                    <option value="웹검색" selected>웹검색</option>
                    <option value="지인소개">지인소개</option>
                    <option value="기타">기타</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>주소지</td>
            <td>
                <select size="4" name="city">
                    <option selected>서울</option>
                    <option value="경기">경기</option>
                    <option>인천</option>
                    <option value="기타">기타</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>메모</td>
            <td>
                <textarea rows="4" name="memo"></textarea>
            </td>
        </tr>
    </table>
    <input type="submit" value="가입">
</form>

</body>
</html>