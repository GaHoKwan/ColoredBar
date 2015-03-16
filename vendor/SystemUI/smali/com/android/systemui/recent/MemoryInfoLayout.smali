.class public Lcom/android/systemui/recent/MemoryInfoLayout;
.super Landroid/widget/LinearLayout;
.source "MemoryInfoLayout.java"


# instance fields
.field mBuffersView:Landroid/widget/TextView;

.field mCachesView:Landroid/widget/TextView;

.field private mDelaytime:I

.field mFreeView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field mSwapCachesView:Landroid/widget/TextView;

.field private mTask:Ljava/lang/Runnable;

.field mTotalView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/systemui/recent/MemoryInfoLayout;->mDelaytime:I

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/MemoryInfoLayout;->mHandler:Landroid/os/Handler;

    .line 64
    new-instance v0, Lcom/android/systemui/recent/MemoryInfoLayout$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/MemoryInfoLayout$1;-><init>(Lcom/android/systemui/recent/MemoryInfoLayout;)V

    iput-object v0, p0, Lcom/android/systemui/recent/MemoryInfoLayout;->mTask:Ljava/lang/Runnable;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/systemui/recent/MemoryInfoLayout;->mDelaytime:I

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/MemoryInfoLayout;->mHandler:Landroid/os/Handler;

    .line 64
    new-instance v0, Lcom/android/systemui/recent/MemoryInfoLayout$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/MemoryInfoLayout$1;-><init>(Lcom/android/systemui/recent/MemoryInfoLayout;)V

    iput-object v0, p0, Lcom/android/systemui/recent/MemoryInfoLayout;->mTask:Ljava/lang/Runnable;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/systemui/recent/MemoryInfoLayout;->mDelaytime:I

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/MemoryInfoLayout;->mHandler:Landroid/os/Handler;

    .line 64
    new-instance v0, Lcom/android/systemui/recent/MemoryInfoLayout$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/MemoryInfoLayout$1;-><init>(Lcom/android/systemui/recent/MemoryInfoLayout;)V

    iput-object v0, p0, Lcom/android/systemui/recent/MemoryInfoLayout;->mTask:Ljava/lang/Runnable;

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Lcom/android/systemui/recent/MemoryInfoLayout$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/MemoryInfoLayout$2;-><init>(Lcom/android/systemui/recent/MemoryInfoLayout;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/recent/MemoryInfoLayout;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/recent/MemoryInfoLayout;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/systemui/recent/MemoryInfoLayout;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/android/systemui/recent/MemoryInfoLayout;->mDelaytime:I

    return v0
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 4

    .prologue
    .line 52
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 54
    const v0, 0x7f070081

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/recent/MemoryInfoLayout;->mTotalView:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f070082

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/recent/MemoryInfoLayout;->mFreeView:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/android/systemui/recent/MemoryInfoLayout;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recent/MemoryInfoLayout;->mTask:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/systemui/recent/MemoryInfoLayout;->mDelaytime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    return-void
.end method
