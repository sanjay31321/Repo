<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
		<div class="col-sm-8">	
			<div class="panel panel-primary">
			<div class="panel-heading">
			<h3 class="panel-title">Register Your Account</h3>
			</div>
			<div class="panel-body">
				<form:form commandName="user">
					<form:errors path="*" cssClass="errorblock" element="div" />
					
					<div class="form-group">
						<label for="inputEmail">Email</label>
						<form:input path="email" cssClass="form-control" cssErrorClass="error" placeholder="Enter Email"/>
						<form:errors path="email" cssClass="error" />
					</div>
					<div class="row">
						<div class="col-sm-6">
							<div class="form-group">
								<label for="inputPassword">Password</label>
								<form:input path="password" cssClass="form-control" type="password" cssErrorClass="error" placeholder="Enter Password"/>
								<form:errors path="password" cssClass="error" />
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label for="inputPasswordAgain">Confirm Password</label>
								<form:input path="password" cssClass="form-control" type="password" cssErrorClass="error" placeholder="Confirm Password"/>
								<form:errors path="password" cssClass="error" />
							</div>
						</div>
					</div>
					
					<div class="row">
						<div class="col-sm-6">
							<div class="form-group">
								<label for="inputFirstName">First Name</label>
								<form:input path="firstname" cssClass="form-control" cssErrorClass="error" placeholder="Enter First Name"/>
								<form:errors path="firstname" cssClass="error" />
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label for="inputLastName">Last Name</label>
								<form:input path="lastname" cssClass="form-control" cssErrorClass="error" placeholder="Enter Last Name"/>
								<form:errors path="lastname" cssClass="error" />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-6">
							<div class="form-group">
								<label for="inputSecurityQuestion">Security Question</label>
								<form:input path="security_question" cssClass="form-control" cssErrorClass="error" placeholder="Enter Security Question"/>
								<form:errors path="security_question" cssClass="error" />
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label for="inputSecurityQuestion">Security Answer</label>
								<form:input path="security_answer" cssClass="form-control" cssErrorClass="error" placeholder="Enter Security Question"/>
								<form:errors path="security_answer" cssClass="error" />
							</div>
						</div>
					</div>					
					
					
					<button type="submit" class="btn btn-primary">Register</button>
					
				</form:form>
					
								
	
			</div>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertDefinition>
