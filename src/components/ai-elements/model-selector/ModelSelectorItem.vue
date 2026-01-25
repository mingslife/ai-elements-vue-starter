<script setup lang="ts">
import type { ListboxItemProps } from "reka-ui"
import type { HTMLAttributes } from "vue"
import { reactiveOmit } from "@vueuse/core"
import { useForwardProps } from "reka-ui"
import { CommandItem } from '@/components/ui/command'

const props = defineProps<ListboxItemProps & { class?: HTMLAttributes["class"] }>()

const delegatedProps = reactiveOmit(props, "class")

const forwardedProps = useForwardProps(delegatedProps)
</script>

<template>
  <CommandItem v-bind="forwardedProps" :class="props.class">
    <slot />
  </CommandItem>
</template>
