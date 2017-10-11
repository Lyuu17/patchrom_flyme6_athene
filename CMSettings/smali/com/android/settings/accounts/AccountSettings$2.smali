.class Lcom/cyanogenmod/settings/accounts/AccountSettings$2;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/accounts/AccountSettings;->getAccountTypePreferences(Lcom/cyanogenmod/settings/accounts/AuthenticatorHelper;Landroid/os/UserHandle;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/cyanogenmod/settings/accounts/AccountSettings$AccountPreference;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/accounts/AccountSettings;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/accounts/AccountSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/accounts/AccountSettings;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/cyanogenmod/settings/accounts/AccountSettings$2;->this$0:Lcom/cyanogenmod/settings/accounts/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/cyanogenmod/settings/accounts/AccountSettings$AccountPreference;Lcom/cyanogenmod/settings/accounts/AccountSettings$AccountPreference;)I
    .locals 2
    .param p1, "t1"    # Lcom/cyanogenmod/settings/accounts/AccountSettings$AccountPreference;
    .param p2, "t2"    # Lcom/cyanogenmod/settings/accounts/AccountSettings$AccountPreference;

    .prologue
    .line 436
    invoke-static {p1}, Lcom/cyanogenmod/settings/accounts/AccountSettings$AccountPreference;->-get0(Lcom/cyanogenmod/settings/accounts/AccountSettings$AccountPreference;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/cyanogenmod/settings/accounts/AccountSettings$AccountPreference;->-get0(Lcom/cyanogenmod/settings/accounts/AccountSettings$AccountPreference;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "t1"    # Ljava/lang/Object;
    .param p2, "t2"    # Ljava/lang/Object;

    .prologue
    .line 435
    check-cast p1, Lcom/cyanogenmod/settings/accounts/AccountSettings$AccountPreference;

    .end local p1    # "t1":Ljava/lang/Object;
    check-cast p2, Lcom/cyanogenmod/settings/accounts/AccountSettings$AccountPreference;

    .end local p2    # "t2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/cyanogenmod/settings/accounts/AccountSettings$2;->compare(Lcom/cyanogenmod/settings/accounts/AccountSettings$AccountPreference;Lcom/cyanogenmod/settings/accounts/AccountSettings$AccountPreference;)I

    move-result v0

    return v0
.end method
