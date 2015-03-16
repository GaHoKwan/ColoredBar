.class Lcom/android/systemui/recent/MemoryInfoLayout$1;
.super Ljava/lang/Object;
.source "MemoryInfoLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/MemoryInfoLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/MemoryInfoLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/MemoryInfoLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/recent/MemoryInfoLayout$1;->this$0:Lcom/android/systemui/recent/MemoryInfoLayout;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 67
    iget-object v1, p0, Lcom/android/systemui/recent/MemoryInfoLayout$1;->this$0:Lcom/android/systemui/recent/MemoryInfoLayout;

    # getter for: Lcom/android/systemui/recent/MemoryInfoLayout;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/recent/MemoryInfoLayout;->access$0(Lcom/android/systemui/recent/MemoryInfoLayout;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recent/MemoryInfoLayout$1;->this$0:Lcom/android/systemui/recent/MemoryInfoLayout;

    # getter for: Lcom/android/systemui/recent/MemoryInfoLayout;->mDelaytime:I
    invoke-static {v2}, Lcom/android/systemui/recent/MemoryInfoLayout;->access$1(Lcom/android/systemui/recent/MemoryInfoLayout;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 69
    iget-object v1, p0, Lcom/android/systemui/recent/MemoryInfoLayout$1;->this$0:Lcom/android/systemui/recent/MemoryInfoLayout;

    .line 70
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 69
    invoke-static {v1}, Lcom/android/systemui/recent/MemoryUtils;->getMemory(Landroid/content/Context;)Lcom/android/systemui/recent/MemoryInfo;

    move-result-object v0

    .line 72
    .local v0, "info":Lcom/android/systemui/recent/MemoryInfo;
    iget-object v1, p0, Lcom/android/systemui/recent/MemoryInfoLayout$1;->this$0:Lcom/android/systemui/recent/MemoryInfoLayout;

    iget-object v1, v1, Lcom/android/systemui/recent/MemoryInfoLayout;->mTotalView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u603b\u8fd0\u5b58:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/systemui/recent/MemoryInfo;->total:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
