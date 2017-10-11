.class Lcom/cyanogenmod/settings/TrustedCredentialsSettings$1;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/TrustedCredentialsSettings;->addTab(Lcom/cyanogenmod/settings/TrustedCredentialsSettings$Tab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/TrustedCredentialsSettings;

.field final synthetic val$adapter:Lcom/cyanogenmod/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/TrustedCredentialsSettings;Lcom/cyanogenmod/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/TrustedCredentialsSettings;
    .param p2, "val$adapter"    # Lcom/cyanogenmod/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/cyanogenmod/settings/TrustedCredentialsSettings$1;->this$0:Lcom/cyanogenmod/settings/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/cyanogenmod/settings/TrustedCredentialsSettings$1;->val$adapter:Lcom/cyanogenmod/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 2
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    .line 233
    iget-object v0, p0, Lcom/cyanogenmod/settings/TrustedCredentialsSettings$1;->this$0:Lcom/cyanogenmod/settings/TrustedCredentialsSettings;

    iget-object v1, p0, Lcom/cyanogenmod/settings/TrustedCredentialsSettings$1;->val$adapter:Lcom/cyanogenmod/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;

    invoke-virtual {v1, p3, p4}, Lcom/cyanogenmod/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->getChild(II)Lcom/cyanogenmod/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyanogenmod/settings/TrustedCredentialsSettings;->-wrap1(Lcom/cyanogenmod/settings/TrustedCredentialsSettings;Lcom/cyanogenmod/settings/TrustedCredentialsSettings$CertHolder;)V

    .line 234
    const/4 v0, 0x1

    return v0
.end method
