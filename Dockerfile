FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wCm5hbWU6IHdpbmRvd3N2bS1hcGIKZGVzY3JpcHRpb246IEFQQiBmb3IgbWFu\
YWdpbmcgV2luZG93cyBWaXJ0dWFsIE1hY2hpbmUKYmluZGFibGU6IEZhbHNlCmFzeW5jOiBvcHRp\
b25hbAp0YWdzOgogIC0gdmlydHVhbGl6YXRpb24KbWV0YWRhdGE6CiAgZGlzcGxheU5hbWU6IFdp\
bmRvd3MgVmlydHVhbCBNYWNoaW5lIChBUEIpCiAgaW1hZ2VVcmw6IGh0dHBzOi8vcmF3LmdpdGh1\
YnVzZXJjb250ZW50LmNvbS9hbnNpYmxlcGxheWJvb2tidW5kbGUvd2luZG93cy1hcGIvbWFzdGVy\
L2RvY3MvaW1ncy9pY29uLnBuZwpwbGFuczoKICAtIG5hbWU6IGRlZmF1bHQKICAgIG1ldGFkYXRh\
OgogICAgICBkaXNwbGF5TmFtZTogV2luZG93cyBWaXJ0dWFsIE1hY2hpbmUKICAgICAgbG9uZ0Rl\
c2NyaXB0aW9uOiBWaXJ0dWFsIG1hY2hpbmUgd2l0aCBXaW5kb3dzCiAgICBkZXNjcmlwdGlvbjog\
V2luZG93cyBWaXJ0dWFsIE1hY2hpbmUKICAgIGZyZWU6IFRydWUKICAgIHBhcmFtZXRlcnM6CiAg\
ICAgIC0gbmFtZTogYWRtaW5fdXNlcgogICAgICAgIHRpdGxlOiBPcGVuc2hpZnQgQWRtaW4gVXNl\
cgogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAgIHJlcXVpcmVkOiB0cnVlCiAgICAgIC0gbmFt\
ZTogYWRtaW5fcGFzc3dvcmQKICAgICAgICB0aXRsZTogT3BlbnNoaWZ0IEFkbWluIFBhc3N3b3Jk\
CiAgICAgICAgdHlwZTogc3RyaW5nCiAgICAgICAgZGlzcGxheV90eXBlOiBwYXNzd29yZAogICAg\
ICAgIHJlcXVpcmVkOiB0cnVlCiAgICAgIC0gbmFtZTogdm1uYW1lCiAgICAgICAgdGl0bGU6IE5h\
bWUKICAgICAgICB0eXBlOiBzdHJpbmcKICAgICAgICBkaXNwbGF5X3R5cGU6IHRleHQKICAgICAg\
ICByZXF1aXJlZDogdHJ1ZQogICAgICAgIGRlZmF1bHQ6IG15dm0KICAgICAgLSBuYW1lOiB2bW1l\
bW9yeQogICAgICAgIHRpdGxlOiBNZW1vcnkgKGluIE1pQikKICAgICAgICB0eXBlOiBudW1iZXIK\
ICAgICAgICByZXF1aXJlZDogdHJ1ZQogICAgICAgIGRlZmF1bHQ6IDY0CiAgICAgIC0gbmFtZTog\
dm1jcHVzCiAgICAgICAgdGl0bGU6IENQVXMKICAgICAgICB0eXBlOiBlbnVtCiAgICAgICAgcmVx\
dWlyZWQ6IHRydWUKICAgICAgICBkZWZhdWx0OiAnMScKICAgICAgICBlbnVtOiBbJzEnLCAnMics\
ICc0JyAsICc2JyAsICc4JywgJzEyJywgJzE2JywgJzMyJ10KICAgICAgLSBuYW1lOiB2bWRpc2tp\
bWFnZQogICAgICAgIHRpdGxlOiBEaXNrIEltYWdlCiAgICAgICAgdHlwZTogc3RyaW5nCiAgICAg\
ICAgcmVxdWlyZWQ6IHRydWUKICAgICAgICBkZWZhdWx0OiBrdWJldmlydC9mZWRvcmEtY2xvdWQt\
cmVnaXN0cnktZGlzay1kZW1vOmxhdGVzdAoK"

COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles
RUN chmod -R g=u /opt/{ansible,apb}
USER apb
