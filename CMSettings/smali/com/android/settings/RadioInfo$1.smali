.class Lcom/cyanogenmod/settings/RadioInfo$1;
.super Landroid/telephony/PhoneStateListener;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/RadioInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/RadioInfo;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/cyanogenmod/settings/RadioInfo$1;->this$0:Lcom/cyanogenmod/settings/RadioInfo;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 1
    .param p1, "cfi"    # Z

    .prologue
    .line 167
    iget-object v0, p0, Lcom/cyanogenmod/settings/RadioInfo$1;->this$0:Lcom/cyanogenmod/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/cyanogenmod/settings/RadioInfo;->-set0(Lcom/cyanogenmod/settings/RadioInfo;Z)Z

    .line 168
    iget-object v0, p0, Lcom/cyanogenmod/settings/RadioInfo$1;->this$0:Lcom/cyanogenmod/settings/RadioInfo;

    invoke-static {v0}, Lcom/cyanogenmod/settings/RadioInfo;->-wrap10(Lcom/cyanogenmod/settings/RadioInfo;)V

    .line 166
    return-void
.end method

.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "arrayCi":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    iget-object v0, p0, Lcom/cyanogenmod/settings/RadioInfo$1;->this$0:Lcom/cyanogenmod/settings/RadioInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCellInfoChanged: arrayCi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyanogenmod/settings/RadioInfo;->-wrap6(Lcom/cyanogenmod/settings/RadioInfo;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/cyanogenmod/settings/RadioInfo$1;->this$0:Lcom/cyanogenmod/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/cyanogenmod/settings/RadioInfo;->-wrap12(Lcom/cyanogenmod/settings/RadioInfo;Ljava/util/List;)V

    .line 172
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 1
    .param p1, "location"    # Landroid/telephony/CellLocation;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/cyanogenmod/settings/RadioInfo$1;->this$0:Lcom/cyanogenmod/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/cyanogenmod/settings/RadioInfo;->-wrap20(Lcom/cyanogenmod/settings/RadioInfo;Landroid/telephony/CellLocation;)V

    .line 155
    return-void
.end method

.method public onDataActivity(I)V
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/cyanogenmod/settings/RadioInfo$1;->this$0:Lcom/cyanogenmod/settings/RadioInfo;

    invoke-static {v0}, Lcom/cyanogenmod/settings/RadioInfo;->-wrap14(Lcom/cyanogenmod/settings/RadioInfo;)V

    .line 150
    return-void
.end method

.method public onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 3
    .param p1, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/cyanogenmod/settings/RadioInfo$1;->this$0:Lcom/cyanogenmod/settings/RadioInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDataConnectionRealTimeInfoChanged: dcRtInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyanogenmod/settings/RadioInfo;->-wrap6(Lcom/cyanogenmod/settings/RadioInfo;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/cyanogenmod/settings/RadioInfo$1;->this$0:Lcom/cyanogenmod/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/cyanogenmod/settings/RadioInfo;->-wrap16(Lcom/cyanogenmod/settings/RadioInfo;Landroid/telephony/DataConnectionRealTimeInfo;)V

    .line 178
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/cyanogenmod/settings/RadioInfo$1;->this$0:Lcom/cyanogenmod/settings/RadioInfo;

    invoke-static {v0}, Lcom/cyanogenmod/settings/RadioInfo;->-wrap13(Lcom/cyanogenmod/settings/RadioInfo;)V

    .line 144
    iget-object v0, p0, Lcom/cyanogenmod/settings/RadioInfo$1;->this$0:Lcom/cyanogenmod/settings/RadioInfo;

    invoke-static {v0}, Lcom/cyanogenmod/settings/RadioInfo;->-wrap15(Lcom/cyanogenmod/settings/RadioInfo;)V

    .line 145
    iget-object v0, p0, Lcom/cyanogenmod/settings/RadioInfo$1;->this$0:Lcom/cyanogenmod/settings/RadioInfo;

    invoke-static {v0}, Lcom/cyanogenmod/settings/RadioInfo;->-wrap25(Lcom/cyanogenmod/settings/RadioInfo;)V

    .line 146
    iget-object v0, p0, Lcom/cyanogenmod/settings/RadioInfo$1;->this$0:Lcom/cyanogenmod/settings/RadioInfo;

    invoke-static {v0}, Lcom/cyanogenmod/settings/RadioInfo;->-wrap24(Lcom/cyanogenmod/settings/RadioInfo;)V

    .line 142
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 1
    .param p1, "mwi"    # Z

    .prologue
    .line 161
    iget-object v0, p0, Lcom/cyanogenmod/settings/RadioInfo$1;->this$0:Lcom/cyanogenmod/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/cyanogenmod/settings/RadioInfo;->-set1(Lcom/cyanogenmod/settings/RadioInfo;Z)Z

    .line 162
    iget-object v0, p0, Lcom/cyanogenmod/settings/RadioInfo$1;->this$0:Lcom/cyanogenmod/settings/RadioInfo;

    invoke-static {v0}, Lcom/cyanogenmod/settings/RadioInfo;->-wrap22(Lcom/cyanogenmod/settings/RadioInfo;)V

    .line 160
    return-void
.end method
