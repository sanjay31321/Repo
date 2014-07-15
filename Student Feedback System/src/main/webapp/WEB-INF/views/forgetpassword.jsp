<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
		
		<div class="col-sm-2"></div>
		<div class="col-sm-4">
			
			<div class="panel panel-primary">
			<div class="panel-heading">
			<h3 class="panel-title">Forget Password</h3>
			</div>
			<div class="panel-body">			
				<form:form commandName="user">
						<form:errors path="*" cssClass="errorblock" element="div" />
						<div class="form-group">
							<label for="inputEmail">Email</label>
							<form:input path="email" cssClass="form-control" cssErrorClass="error" placeholder="Enter Email"/>
							<form:errors path="email" cssClass="error" />
						</div>
						<button type="submit" class="btn btn-primary"> Submit </button>
				</form:form>
				
			</div>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertDefinition>
