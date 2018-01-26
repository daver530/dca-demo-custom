# dca_demo

Key pieces of this cookbook

1.  audit-ini recipe - overrides the attributes on wrapper cookbook dca_audit_baseline
    to run linux_baseline_wrapper and ini profiles.

2.  foobar recipe - remediation recipe for ini profile.

3.  foobar template - contains contents for file /opt/foo.ini

4.  metadata.rb - make sure to increment before uploading unless the entire dca_demo
    was replaced.
