<%inherit file="/base/base_home.mako"/>
<%block name="addition_header">
${parent.addition_header()}
<script type="text/javascript">
if (window.location.hash && window.location.hash === "#_=_") {
    window.location.hash = "";
}
</script>
</%block>
<h1>Hello, ${request.user.username}</h1>

% if request.user.status == 'wait for approval':
This user wait for approval.
% endif
<ul class="list-unstyled">
<li><b>Roles</b>: ${", ".join([role.name for role in request.user.roles])}</li>
</ul>