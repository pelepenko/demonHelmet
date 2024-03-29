/**
 * @file reward.h
 * 
 * Demon Helmet - TFS 1.4 - a free and open-source MMORPG server emulator
 * Copyright (C) 2023 Gabriel P Falcao, Mark Samman and The Forgotten Server Developers
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program; if not, write to the Free Software Foundation, Inc.,
 * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 */

#ifndef OT_SRC_REWARD_H_
#define OT_SRC_REWARD_H_

#include "container.h"

class Reward : public Container
{
	public:
		explicit Reward();

		Reward* getReward() final {
			return this;
		}
		const Reward* getReward() const final {
			return this;
		}

		//cylinder implementations
		ReturnValue queryAdd(int32_t index, const Thing& thing, uint32_t count,
			uint32_t flags, Creature* actor = nullptr) const final;

		void postAddNotification(Thing* thing, const Cylinder* oldParent, int32_t index, cylinderlink_t link = LINK_OWNER) final;
		void postRemoveNotification(Thing* thing, const Cylinder* newParent, int32_t index, cylinderlink_t link = LINK_OWNER) final;

		//overrides
		bool canRemove() const final {
			return true;
		}

		Cylinder* getParent() const final;
		Cylinder* getRealParent() const final {
			return parent;
		}
};

#endif
